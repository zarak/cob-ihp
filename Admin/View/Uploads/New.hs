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
                        <div class="form-group">
                            <label for="upload_file_url">
                                <input id="upload_file_url"
                                       name="fileUrl" 
                                       type="file" />
                            </label>
                        </div>
                    </div>
                </div>

                {submitButton { label = "Submit" }}


            <script>
                async function SaveFile(inp) 
                {
                    let formData = new FormData();
                    let file = inp.files[0];      
                    console.log(file);
                         
                    formData.append("file", file);
                    
                    try {
                       let r = await fetch('/admin/CreateUpload', {method: "POST", body: formData}); 
                       console.log('HTTP response code:',r.status); 
                    } catch(e) {
                       console.log('File could not be uploaded...:', e);
                    }
                }
            </script>
            |]
