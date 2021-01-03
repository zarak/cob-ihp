module Web.View.Votes.Edit where
import Web.View.Prelude

data EditView = EditView { vote :: Vote }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={VotesAction}>Votes</a></li>
                <li class="breadcrumb-item active">Edit Vote</li>
            </ol>
        </nav>
        <h1>Edit Vote</h1>
        {renderForm vote}
    |]

renderForm :: Vote -> Html
renderForm vote = formFor vote [hsx|
    {(textField #userId)}
    {(textField #postId)}
    {submitButton}
|]
