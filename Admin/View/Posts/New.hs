module Admin.View.Posts.New where
import Admin.View.Prelude

data NewView = NewView { post :: Post }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">New Post</li>
            </ol>
        </nav>
        <h1>New Post</h1>
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
