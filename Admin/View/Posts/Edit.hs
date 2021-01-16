module Admin.View.Posts.Edit where
import Admin.View.Prelude

data EditView = EditView { post :: Post }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Edit Post</li>
            </ol>
        </nav>
        <h1>Edit Post</h1>
        {renderForm post}
    |]

renderForm :: Post -> Html
renderForm post = formFor post [hsx|
    {(textField #title)}
    {(textField #body)}
    {(textField #upvotes)}
    {(textField #author)}
    {(textField #link)}
    {(textField #confirmedForTraining)}
    {submitButton}
|]
