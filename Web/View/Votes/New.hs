module Web.View.Votes.New where
import Web.View.Prelude

data NewView = NewView { vote :: Vote }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={VotesAction}>Votes</a></li>
                <li class="breadcrumb-item active">New Vote</li>
            </ol>
        </nav>
        <h1>New Vote</h1>
        {renderForm vote}
    |]

renderForm :: Vote -> Html
renderForm vote = formFor vote [hsx|
    {(textField #userId)}
    {(textField #postId)}
    {submitButton}
|]
