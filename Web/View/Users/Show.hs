module Web.View.Users.Show where
import Web.View.Prelude

data ShowView = ShowView { user :: User }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <h1>Show User</h1>
        <p>First name: {get #firstName user}</p>
        <p>Last name: {get #lastName user}</p>
        <p>Email: {get #email user}</p>
    |]
