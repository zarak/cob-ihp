module Web.Mail.Users.Confirm where
import Web.View.Prelude
import IHP.MailPrelude

data ConfirmMail = ConfirmMail { user :: User }

instance BuildMail ConfirmMail where
    subject = "Confirm your E-mail Address"
    to ConfirmMail { .. } = Address { addressName = Just (get #firstName user), addressEmail = (get #email user) }
    from = "hi@example.com"
    html ConfirmMail { .. } = [hsx|
        To verify your E-Mail, just click link: {link}
    |] 
        where link = "https://localhost:8000" <> pathTo VerifyUserAction <> "?token=" <> get #token user
