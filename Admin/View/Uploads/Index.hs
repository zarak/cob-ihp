module Admin.View.Uploads.Index where
import Admin.View.Prelude

data IndexView = IndexView { uploads :: [Upload] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={UploadsAction}>Uploads</a></li>
            </ol>
        </nav>
        <h1>Index <a href={pathTo NewUploadAction} class="btn btn-primary ml-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table mt-3">
                <thead>
                    <tr>
                        <th>Upload</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach uploads renderUpload}</tbody>
            </table>
        </div>
    |]


renderUpload upload = [hsx|
    <tr>
        <td>{get #fileUrl upload}</td>
        <td><a href={ShowUploadAction (get #id upload)}>Show</a></td>
        <td><a href={EditUploadAction (get #id upload)} class="text-muted">Edit</a></td>
        <td><a href={DeleteUploadAction (get #id upload)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
