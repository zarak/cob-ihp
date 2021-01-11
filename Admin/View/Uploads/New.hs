module Admin.View.Uploads.New where
import Admin.View.Prelude

data NewView = NewView { upload :: Upload }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={UploadsAction}>Uploads</a></li>
                <li class="breadcrumb-item active">New Upload</li>
            </ol>
        </nav>
        <h1>New Upload</h1>
        {renderForm upload}
    |]

renderForm :: Upload -> Html
renderForm upload = formFor upload [hsx|
    {(textField #fileUrl)}
    {submitButton}
|]
