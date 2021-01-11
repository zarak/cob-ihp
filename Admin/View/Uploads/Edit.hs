module Admin.View.Uploads.Edit where
import Admin.View.Prelude

data EditView = EditView { upload :: Upload }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={UploadsAction}>Uploads</a></li>
                <li class="breadcrumb-item active">Edit Upload</li>
            </ol>
        </nav>
        <h1>Edit Upload</h1>
        {renderForm upload}
    |]

renderForm :: Upload -> Html
renderForm upload = formFor upload [hsx|
    {(textField #fileUrl)}
    {submitButton}
|]
