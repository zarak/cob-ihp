module Web.View.Comments.Edit where
import Web.View.Prelude

data EditView = EditView { comment :: Comment }

instance View EditView where
    html EditView { .. } = [hsx|
        <h1>Edit Comment</h1>
        {renderForm comment}
    |]

renderForm :: Comment -> Html
renderForm comment = formFor comment [hsx|
    {(hiddenField #postId)}
    {(hiddenField #author)}
    {(textField #body)}
    {submitButton}
|]
