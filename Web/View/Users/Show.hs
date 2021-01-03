module Web.View.Users.Show where
import Web.View.Prelude

data ShowView = ShowView { user :: User }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={UsersAction}>Users</a></li>
                <li class="breadcrumb-item active">User Profile</li>
            </ol>
        </nav>
        <h1>Show User</h1>
        <p>First name: {get #firstName user}</p>
        <p>Last name: {get #lastName user}</p>
        <p>Email: {get #email user}</p>
    |]
