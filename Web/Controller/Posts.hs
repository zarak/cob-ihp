module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import IHP.LoginSupport.Helper.Controller
import Text.Read (read)

import qualified Text.MMark as MMark

instance Controller PostsController where
    action PostsAction = do
        numPosts :: Int <- query @Post
            |> fetchCount

        let page = paramOrDefault 1 "page"
            postsPerPage = 2
            (q, r) = numPosts `quotRem` postsPerPage
            numPages = q + (if r == 0 then 0 else 1)
            validPage
              | page < 1 = 1
              | page > numPages = numPages
              | otherwise = page
        --let page = 0
        posts <- query @Post 
            |> orderByDesc #createdAt
            |> limit postsPerPage
            |> offset ((validPage - 1) * postsPerPage)
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


