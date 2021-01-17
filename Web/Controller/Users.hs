module Web.Controller.Users where

import Web.Controller.Prelude
import Web.View.Users.Index
import Web.View.Users.New
import Web.View.Users.Edit
import Web.View.Users.Show
import IHP.AuthSupport.Authentication
import IHP.AuthSupport.Authorization
import IHP.LoginSupport.Helper.Controller
import Web.Mail.Users.Confirm

instance Controller UsersController where
    action UsersAction = do
        users <- query @User |> fetch
        render IndexView { .. }

    action NewUserAction = do
        let user = newRecord
        render NewView { .. }

    action ShowUserAction { userId } = do
        accessDeniedUnless (currentUserId == userId)
        user <- fetch userId
        render ShowView { .. }

    action EditUserAction { userId } = do
        -- user <- fetch userId
        -- render EditView { .. }
        renderNotFound

    action UpdateUserAction { userId } = do
        accessDeniedUnless (currentUserId == userId)
        user <- fetch userId
        user
            |> buildUser
            |> ifValid \case
                Left user -> render EditView { .. }
                Right user -> do
                    user <- user |> updateRecord
                    setSuccessMessage "User updated"
                    redirectTo EditUserAction { .. }

    action CreateUserAction = do
        let user = newRecord @User
        user
            |> buildUser
            |> ifValid \case
                Left user -> render NewView { .. } 
                Right user -> do
                    hashed <- hashPassword (get #passwordHash user)
                    emailExists <- checkForExistingEmail (get #email user) 
                    case emailExists of 
                      Just _ -> do
                          setErrorMessage "Email already exists"
                          render NewView { .. }
                      Nothing -> do
                        --let token = tshow "thisisatesttoken"
                        user <- user 
                            |> set #passwordHash hashed
                            -- |> set #token token
                            |> createRecord
                        -- sendMail ConfirmMail { user }
                        -- setSuccessMessage "Please click the confirmation link in the email that has been sent to you"
                        setSuccessMessage "You have registered successfully"
                        redirectTo NewSessionAction

    action DeleteUserAction { userId } = do
        accessDeniedUnless (currentUserId == userId)
        user <- fetch userId
        deleteRecord user
        setSuccessMessage "User deleted"
        redirectTo UsersAction

    action VerifyUserAction = do
        let token = param @Text "token"
        user <- query @User
            |> filterWhere (#token, token)
            |> fetchOneOrNothing

        case user of
            Nothing -> do
                setErrorMessage "Invalid Token"
            Just user -> do
                case get #isConfirmed user of
                    True -> do
                        setErrorMessage "Email is already confirmed"
                    False -> do
                        user
                            |> set #isConfirmed True
                            |> updateRecord
                        setSuccessMessage "Your email has been confirmed!"

            
        redirectTo UsersAction

buildUser user = user
    |> fill @["firstName","lastName","email","passwordHash","failedLoginAttempts"]
    |> validateField #firstName nonEmpty
    |> validateField #lastName nonEmpty
    |> validateField #email isEmail
    |> validateField #passwordHash nonEmpty
    |> validateField #passwordHash (hasMinLength 8)
    |> validateField #passwordHash (passwordMatch (param "password2"))

passwordMatch pw1 pw2 = if pw1 == pw2
                           then Success
                           else Failure "The passwords don't match"

checkForExistingEmail email = do 
    userExists <- query @User
        |> filterWhere (#email, email)
        |> fetchOneOrNothing
    pure userExists
