module Web.View.Comments.New where
import Web.View.Prelude

data NewView = NewView { comment :: Comment
                       , post :: Post
                       , userName :: Text
                       }

instance View NewView where
    html NewView { .. } = [hsx|
        <h1>New Comment</h1>
        {renderForm comment userName}
    |]

renderForm :: Comment -> Text-> Html
renderForm comment userName = formFor comment [hsx|
    {(hiddenField #postId)}
    {(hiddenField #userId)}
    {(hiddenField #author) {fieldValue=userName}}
    {(textField #body)}
    {submitButton}
|]
