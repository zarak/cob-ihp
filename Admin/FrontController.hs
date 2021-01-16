module Admin.FrontController where

import IHP.RouterPrelude
import Admin.Controller.Prelude
import Admin.View.Layout (defaultLayout)

-- Controller Imports
import Admin.Controller.Posts
import Admin.Controller.Uploads
import Admin.Controller.Users
import Admin.Controller.Admins
import Admin.Controller.Static

import IHP.LoginSupport.Middleware
import Admin.Controller.Sessions

instance FrontController AdminApplication where
    controllers = 
        [ startPage WelcomeAction
        , parseRoute @StaticController
        , parseRoute @SessionsController
        -- Generator Marker
        , parseRoute @PostsController
        , parseRoute @UploadsController
        , parseRoute @UsersController
        , parseRoute @AdminsController
        ]

instance InitControllerContext AdminApplication where
    initContext = do
        setLayout defaultLayout
        initAuthentication @Admin
