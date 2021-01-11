module Admin.View.Uploads.Show where
import Admin.View.Prelude

data ShowView = ShowView { upload :: Upload }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={UploadsAction}>Uploads</a></li>
                <li class="breadcrumb-item active">Show Upload</li>
            </ol>
        </nav>
        <h1>Show Upload</h1>
        <p>{upload}</p>
    |]
