module Web.View.Sessions.New where

import Web.View.Prelude
import IHP.AuthSupport.View.Sessions.New

instance View (NewView User) where
    html NewView { .. } = [hsx|
        <div class="h-100" id="sessions-new">
            <div class="d-flex align-items-center">
                <div class="w-100">
                    <div style="max-width: 400px" class="mx-auto mb-5">
                        <div class="w-50 mx-auto border p-5 shadow rounded">
                            <!--{renderFlashMessages}-->
                            <div class="pb-2 font-bold">Login</div>
                            {renderForm user}
                        </div>
                    </div>
                </div>
            </div>
        </div>
|]

renderForm :: User -> Html
renderForm user = [hsx|
<form action={CreateSessionAction} method="POST">
    <div class="form-group">
        <div class="flex flex-wrap mb-6">
        <input 
            name="email"
            value={get #email user} 
            type="email" 
            id="email"
            class="form-control"
            placeholder="E-mail"
        />
        </div>
    </div>
    <div class="form-group">
        <input
            type="password"
            name="password"
            class="form-control"
            placeholder="Password"
        />
    </div>
    <button class="btn" type="submit">Login</button>
</form>    
|]
