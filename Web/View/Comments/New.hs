module Web.View.Comments.New where
import Web.View.Prelude

data NewView = NewView { comment :: Comment
                       , post :: Post
                       , userName :: Text
                       }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={CommentsAction}>Comments</a></li>
                <li class="breadcrumb-item active">New Comment</li>
            </ol>
        </nav>
        <h1>New Comment for <q>{get #title post}</q></h1>
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
