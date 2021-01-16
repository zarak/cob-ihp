module Admin.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types
import IHP.LoginSupport.Types

data AdminApplication = AdminApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

data SessionsController
    = NewSessionAction
    | CreateSessionAction
    | DeleteSessionAction
    deriving (Eq, Show, Data)

instance HasNewSessionUrl Admin where
    newSessionUrl _ = "/admin/NewSession"

data AdminsController
    = AdminsAction
    | NewAdminAction
    | ShowAdminAction { adminId :: !(Id Admin) }
    | CreateAdminAction
    | EditAdminAction { adminId :: !(Id Admin) }
    | UpdateAdminAction { adminId :: !(Id Admin) }
    | DeleteAdminAction { adminId :: !(Id Admin) }
    deriving (Eq, Show, Data)

data UsersController
    = UsersAction
    | NewUserAction
    | ShowUserAction { userId :: !(Id User) }
    | CreateUserAction
    | EditUserAction { userId :: !(Id User) }
    | UpdateUserAction { userId :: !(Id User) }
    | DeleteUserAction { userId :: !(Id User) }
    deriving (Eq, Show, Data)

data UploadsController
    = UploadsAction
    | GetScoresAction
    | NewUploadAction
    | ShowUploadAction { uploadId :: !(Id Upload) }
    | CreateUploadAction
    | EditUploadAction { uploadId :: !(Id Upload) }
    | UpdateUploadAction { uploadId :: !(Id Upload) }
    | DeleteUploadAction { uploadId :: !(Id Upload) }
    deriving (Eq, Show, Data)

data PostsController
    = PostsAction
    | NewPostAction
    | ShowPostAction { postId :: !(Id Post) }
    | CreatePostAction
    | EditPostAction { postId :: !(Id Post) }
    | UpdatePostAction { postId :: !(Id Post) }
    | DeletePostAction { postId :: !(Id Post) }
    deriving (Eq, Show, Data)
