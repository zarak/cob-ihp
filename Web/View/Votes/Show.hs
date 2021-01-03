module Web.View.Votes.Show where
import Web.View.Prelude

data ShowView = ShowView { vote :: Vote }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={VotesAction}>Votes</a></li>
                <li class="breadcrumb-item active">Show Vote</li>
            </ol>
        </nav>
        <h1>Show Vote</h1>
        <p>{vote}</p>
    |]
