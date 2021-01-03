module Admin.View.Admins.New where
import Admin.View.Prelude

data NewView = NewView { admin :: Admin }

instance View NewView where
    html NewView { .. } = [hsx|
        <div class="w-50 mx-auto border p-5 shadow rounded">
            <h1>Create new admin</h1>
            {renderForm admin}
        </div>
    |]

renderForm :: Admin -> Html
renderForm admin = formFor admin [hsx|
    {(textField #email)}
    <div class="d-flex justify-content-between">
        {(passwordField #passwordHash) { fieldLabel="Password" }} 
        {(passwordField #passwordHash) { fieldName="password2", fieldLabel="Confirm Password" }}
    </div>
    {submitButton}
|]
