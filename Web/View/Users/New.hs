module Web.View.Users.New where
import Web.View.Prelude

data NewView = NewView { user :: User }

instance View NewView where
    html NewView { .. } = [hsx|
        <div class="h-100" id="sessions-new">
            <div class="d-flex align-items-center">
                <div class="w-100">
                    <div style="max-width: 400px" class="mx-auto mb-5">
                        <div class="w-50 mx-auto border p-5 shadow rounded">
                            <div class="font-bold pb-2">Sign Up</div>
                            {renderForm user}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    |]

renderForm :: User -> Html
renderForm user = formFor user [hsx|
    {(textField #firstName) { placeholder="First Name", fieldLabel="" }}
    {(textField #lastName) { placeholder="Last Name", fieldLabel="" }} 
    {(emailField #email) { placeholder="E-mail", fieldLabel="" }}
    <div>
        {(passwordField #passwordHash) { placeholder="Password", fieldLabel="" }}
        {(passwordField #passwordHash) { fieldName="password2", placeholder="Confirm Password", fieldLabel="" }}
    </div>
    {submitButton {label="Sign Up"}}
|]

