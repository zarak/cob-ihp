module Web.View.Votes.Index where
import Web.View.Prelude

data IndexView = IndexView { votes :: [Vote] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={VotesAction}>Votes</a></li>
            </ol>
        </nav>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Vote</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach votes renderVote}</tbody>
            </table>
        </div>
    |]


renderVote vote = [hsx|
    <tr>
        <td>{vote}</td>
        <td><a href={ShowVoteAction (get #id vote)}>Show</a></td>
        <td><a href={EditVoteAction (get #id vote)} class="text-muted">Edit</a></td>
        <td><a href={DeleteVoteAction (get #id vote)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
