module Admin.View.Admins.Edit where
import Admin.View.Prelude

data EditView = EditView { admin :: Admin }

instance View EditView where
    html EditView { .. } = [hsx|
        {renderForm admin}
    |]

renderForm :: Admin -> Html
renderForm admin = formFor admin [hsx|
    {(numberField #upvoteThreshold)}
    {submitButton}
|]
