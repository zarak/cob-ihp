module Admin.View.Sessions.New where

import Admin.View.Prelude
import IHP.AuthSupport.View.Sessions.New

instance View (NewView Admin) where
    html NewView { .. } = [hsx|
                <div class="w-50 mx-auto border p-5 shadow rounded">
                        {renderFlashMessages}
                        <h5>Login:</h5>
                        {renderForm user}
                </div>
    |]

renderForm :: Admin -> Html
renderForm user = [hsx|
    <form method="POST" action={CreateSessionAction}>
        <div class="form-group">
            <input name="email" value={get #email user} type="email" class="form-control" placeholder="E-Mail"/>
        </div>
        <div class="form-group">
            <input name="password" type="password" class="form-control" placeholder="Password"/>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
    </form>
|]
