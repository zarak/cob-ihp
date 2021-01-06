module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import IHP.LoginSupport.Helper.Controller
import Text.Read (read)

import qualified Text.MMark as MMark

type PaginationResults = (Int, Int, Int, Int, Int, Int, Int, Int, [Int])

instance Controller PostsController where
    action PostsAction = do
        numPosts :: Double <- query @Post
            |> fetchCount
            |> fromIntegral

        let page = paramOrDefault 1 "page"
            (totalItems, currentPage, pageSize, totalPages, _, _, _, _, pages) = 
                paginate numPosts (fromIntegral page) 10 10

        posts <- query @Post 
            |> orderByDesc #createdAt
            |> limit pageSize
            |> offset ((currentPage - 1) * pageSize)
            |> fetch

        render IndexView { .. }
            

    action NewPostAction = do
        ensureIsUser
        when (not (get #isConfirmed currentUser)) do
            setErrorMessage "You need to confirm your email before posting"
            redirectTo PostsAction
        let post = newRecord
        render NewView { .. }

    action ShowPostAction { postId } = do
        post <- fetch postId
            >>= pure . modify #comments (orderByDesc #createdAt)
            >>= fetchRelated #comments
        
        author <- fetch (get #userId post)
        render ShowView { .. }

    action EditPostAction { postId } = do
        ensureIsUser
        post <- fetch postId
        render EditView { .. }

    action UpdatePostAction { postId } = do
        ensureIsUser
        post <- fetch postId
        post
            |> buildPost
            |> ifValid \case
                Left post -> render EditView { .. }
                Right post -> do
                    post <- post |> updateRecord
                    setSuccessMessage "Post updated"
                    redirectTo PostsAction

    action CreatePostAction = do
        ensureIsUser
        let post = newRecord @Post
        post
            |> buildPost
            |> ifValid \case
                Left post -> render NewView { .. } 
                Right post -> do
                    post <- post 
                        |> set #userId currentUserId
                        |> createRecord
                    setSuccessMessage "Post created"
                    redirectTo PostsAction

    action DeletePostAction { postId } = do
        ensureIsUser
        post <- fetch postId
        deleteRecord post
        setSuccessMessage "Post deleted"
        redirectTo PostsAction

buildPost post = post
    |> fill @["title","body"]
    |> validateField #title nonEmpty
    |> validateField #body nonEmpty
    |> validateField #body isMarkdown

isMarkdown text =
    case MMark.parse "" text of
      Left _ -> Failure "Please provide valid Markdown"
      Right _ -> Success


paginate :: Double -> Double -> Double -> Double -> PaginationResults
paginate totalItems page pageSize maxPages =
    let totalPages = fromIntegral $ ceiling (totalItems / pageSize)
        maxPagesBeforeCurrentPage = fromIntegral $ floor (maxPages / 2)
        maxPagesAfterCurrentPage = fromIntegral (ceiling (maxPages / 2)) - 1
        currentPage
          | page < 1 = 1
          | page > totalPages = totalPages
          | otherwise = page
        startPage
          | currentPage <= maxPagesBeforeCurrentPage = 1
          | currentPage + maxPagesAfterCurrentPage >= totalPages = totalPages - maxPages + 1
          | otherwise = currentPage - maxPagesBeforeCurrentPage
        endPage
          | currentPage <= maxPagesBeforeCurrentPage = maxPages
          | currentPage + maxPagesAfterCurrentPage >= totalPages = totalPages
          | otherwise = currentPage + maxPagesAfterCurrentPage
        startIndex = (currentPage - 1) * pageSize
        endIndex = min (startIndex + pageSize - 1) (totalItems - 1)
        pages = map round [startPage..endPage] :: [Int]
    in
    ( round totalItems :: Int
    , round currentPage :: Int
    , round pageSize :: Int
    , round totalPages :: Int
    , round startPage :: Int
    , round endPage :: Int
    , round startIndex :: Int
    , round endIndex :: Int
    , pages
    )
