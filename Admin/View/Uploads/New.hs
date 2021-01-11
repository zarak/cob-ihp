module Admin.View.Uploads.New where
import Admin.View.Prelude
import Data.Text (pack)

data NewView = NewView { upload :: Upload }

instance View NewView where
    html NewView { .. } = [hsx|
        {renderForm upload}
    |]
        where
            renderForm :: Upload -> Html
            renderForm upload = formFor upload [hsx|
                <div>
                    <h5>
                        Upload data
                    </h5>

                    <div style="max-width: 300px">
                        <form id="jquery-upload-form" enctype="multipart/form-data">
                            <input id="file" type="file" name="file"/>
                            <input id="jquery-upload-button" type="button" value="Upload"/>
                        </form>
                    </div>
                </div>
            |]
