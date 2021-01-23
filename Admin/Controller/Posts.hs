module Admin.Controller.Posts where

import Admin.Controller.Prelude
import Admin.View.Posts.Index
import Admin.View.Posts.New
import Admin.View.Posts.Edit
import Admin.View.Posts.Show

instance Controller PostsController where
    beforeAction = ensureIsAdmin @Admin

    action PostsAction = do
        -- let x = get #upvoteThreshold $ currentAdmin @Admin
        posts <- query @Post
            -- TODO: Rewrite without string interpolation
            -- |> filterWhereSql (#upvotes, cs $ ">= " <> show x)
            |> fetch
            >>= collectionFetchRelated #votes

        render IndexView { .. }

    action NewPostAction = do
        let post = newRecord
        render NewView { .. }

    action ShowPostAction { postId } = do
        post <- fetch postId
        render ShowView { .. }

    action EditPostAction { postId } = do
        post <- fetch postId
        render EditView { .. }

    action UpdatePostAction { postId } = do
        post <- fetch postId
        post
            |> buildPost
            |> ifValid \case
                Left post -> render EditView { .. }
                Right post -> do
                    post <- post |> updateRecord
                    setSuccessMessage "Post updated"
                    redirectTo EditPostAction { .. }

    action CreatePostAction = do
        let post = newRecord @Post
        post
            |> buildPost
            |> ifValid \case
                Left post -> render NewView { .. } 
                Right post -> do
                    post <- post |> createRecord
                    setSuccessMessage "Post created"
                    redirectTo PostsAction

    action DeletePostAction { postId } = do
        post <- fetch postId
        deleteRecord post
        setSuccessMessage "Post deleted"
        redirectTo PostsAction

buildPost post = post
    |> fill @["title","body","upvotes","author","link","confirmedForTraining"]
