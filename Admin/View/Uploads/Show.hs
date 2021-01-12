module Admin.View.Uploads.Show where
import Admin.View.Prelude
import System.Process

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
        <a class="btn bg-green-800 text-red-50 m-2" href={GetScoresAction}>Run inference</a>
    |]
