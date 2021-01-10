module Web.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types

import IHP.LoginSupport.Types

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

instance HasNewSessionUrl User where
    newSessionUrl _ = "/NewSession"

data PostsController
    = PostsAction
    | NewPostAction
    | ShowPostAction { postId :: !(Id Post) }
    | CreatePostAction
    | EditPostAction { postId :: !(Id Post) }
    | UpdatePostAction { postId :: !(Id Post) }
    | DeletePostAction { postId :: !(Id Post) }
    deriving (Eq, Show, Data)

data CommentsController
    = CommentsAction
    | NewCommentAction { postId :: !(Id Post) }
    | ShowCommentAction { commentId :: !(Id Comment) }
    | CreateCommentAction
    | EditCommentAction { commentId :: !(Id Comment) }
    | UpdateCommentAction { commentId :: !(Id Comment) }
    | DeleteCommentAction { commentId :: !(Id Comment) }
    deriving (Eq, Show, Data)

data SessionsController
    = NewSessionAction
    | CreateSessionAction
    | DeleteSessionAction
    deriving (Eq, Show, Data)

data UsersController
    = UsersAction
    | NewUserAction
    | ShowUserAction { userId :: !(Id User) }
    | CreateUserAction
    | EditUserAction { userId :: !(Id User) }
    | UpdateUserAction { userId :: !(Id User) }
    | DeleteUserAction { userId :: !(Id User) }
    | VerifyUserAction
    deriving (Eq, Show, Data)

data VotesController
    = VotesAction
    | NewVoteAction { postId :: !(Id Post), userId :: !(Id User) }
    | ShowVoteAction { voteId :: !(Id Vote) }
    | CreateVoteAction
    | EditVoteAction { voteId :: !(Id Vote) }
    | UpdateVoteAction { voteId :: !(Id Vote) }
    | DeleteVoteAction { voteId :: !(Id Vote) }
    deriving (Eq, Show, Data)
