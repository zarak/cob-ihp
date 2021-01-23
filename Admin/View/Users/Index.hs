module Admin.View.Users.Index where
import Admin.View.Prelude

data IndexView = IndexView { users :: [User] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={UsersAction}>Users</a></li>
            </ol>
        </nav>
        <h1>Index <a href={pathTo NewUserAction} class="btn btn-primary ml-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table mt-3">
                <thead>
                    <tr>
                        <th>User</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach users renderUser}</tbody>
            </table>
        </div>
    |]


renderUser user = [hsx|
    <tr>
        <td>{get #firstName user}</td>
        <td>{get #lastName user}</td>
        <td>{get #email user}</td>
        <td><a href={ShowUserAction (get #id user)}>Show</a></td>
        <td><a href={EditUserAction (get #id user)} class="text-muted">Edit</a></td>
        <td><a href={DeleteUserAction (get #id user)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
