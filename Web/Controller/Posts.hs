module Web.Controller.Posts where

import Web.Controller.Prelude hiding (lookup)
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import IHP.LoginSupport.Helper.Controller
import Text.Read (read)

import qualified Text.MMark as MMark
import Application.Script.Inference (Predictions)
import Data.HashMap.Strict (toList, lookup)

type PaginationResults = (Int, Int, Int, Int, Int, Int, Int, Int, [Int])

instance Controller PostsController where
    action PostsAction = do
        numPosts :: Int <- query @Post
            |> fetchCount

        let page = paramOrError "page"
            validPage = case page of
                          Left _ -> 1
                          Right p -> p

            (_, currentPage, pageSize, totalPages, _, _, _, _, pages) = 
                paginate (fromIntegral numPosts) validPage 10 5

        posts <- query @Post 
            |> orderByDesc #createdAt
            |> limit pageSize
            |> offset ((currentPage - 1) * pageSize)
            |> fetch
            >>= collectionFetchRelated #predictions

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
            >>= fetchRelated #predictions

        upvotes <- query @Vote
            |> filterWhere (#postId, postId)
            |> fetchCount

        hasVoted <- query @Vote
            |> filterWhere (#userId, currentUserId)
            |> filterWhere (#postId, postId)
            |> fetchOneOrNothing

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
          | totalPages <= maxPages = 1
          | currentPage <= maxPagesBeforeCurrentPage = 1
          | currentPage + maxPagesAfterCurrentPage >= totalPages = totalPages - maxPages + 1
          | otherwise = currentPage - maxPagesBeforeCurrentPage
        endPage
          | totalPages <= maxPages = totalPages
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
