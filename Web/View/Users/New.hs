module Web.View.Users.New where
import Web.View.Prelude

data NewView = NewView { user :: User }

instance View NewView where
    html NewView { .. } = [hsx|
        <div class="w-50 mx-auto border p-5 shadow rounded">
            <h1>Sign Up</h1>
            {renderForm user}
        </div>
    |]

renderForm :: User -> Html
renderForm user = formFor user [hsx|
    {(textField #firstName)}
    {(textField #lastName)}
    {(textField #email)}
    <div class="d-flex justify-content-between">
        {(passwordField #passwordHash) { fieldLabel="Password" }}
        {(passwordField #passwordHash) { fieldName="password2", fieldLabel="Confirm Password" }}
    </div>
    {submitButton {label="Sign Up"}}
|]
