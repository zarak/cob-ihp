module Web.View.Sessions.New where

import Web.View.Prelude
import IHP.AuthSupport.View.Sessions.New

instance View (NewView User) where
    html NewView { .. } = [hsx|
            <div class="w-50 mx-auto border p-5 shadow rounded">
                {renderFlashMessages}
                <div class="pb-2 font-bold">Login</div>
                {renderForm user}
            </div>
|]

renderForm :: User -> Html
renderForm user = [hsx|
<form action={CreateSessionAction} method="POST" accept-charset="utf-8">
    <div class="form-group">
        <input 
            type="email" 
            value={get #email user} 
            name="email"
            id="email"
            class="form-control"
            placeholder="E-mail"
        />
    </div>
    <div class="form-group">
        <input
            class="form-control"
            type="password"
            name="password"
            placeholder="Password"
        />
    </div>
    <button class="btn btn-primary btn-block" type="submit">Login</button>
</form>    
|]
