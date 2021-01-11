module Admin.Controller.Uploads where

import Admin.Controller.Prelude
import Admin.View.Uploads.Index
import Admin.View.Uploads.New
import Admin.View.Uploads.Edit
import Admin.View.Uploads.Show
import qualified Data.ByteString.Lazy as LBS

instance Controller UploadsController where
    action UploadsAction = do
        uploads <- query @Upload |> fetch
        render IndexView { .. }

    action NewUploadAction = do
        let upload = newRecord
        render NewView { .. }

    action ShowUploadAction { uploadId } = do
        upload <- fetch uploadId
        render ShowView { .. }

    action EditUploadAction { uploadId } = do
        upload <- fetch uploadId
        render EditView { .. }

    action UpdateUploadAction { uploadId } = do
        upload <- fetch uploadId
        upload
            |> buildUpload
            |> ifValid \case
                Left upload -> render EditView { .. }
                Right upload -> do
                    upload <- upload |> updateRecord
                    setSuccessMessage "Upload updated"
                    redirectTo EditUploadAction { .. }

    action CreateUploadAction = do
        body <- getRequestBody
        let file = fileOrNothing body
        putStr "Test"
        case file of
          Just a -> liftIO do
              (fileContent a) |> LBS.writeFile "static/uploads/test.csv"
              setSuccessMessage "File uploaded"
              redirectTo NewUploadAction
          Nothing -> 
              -- setErrorMessage "Unable to write file"
              redirectTo NewUploadAction

        -- writeFile "static/uploads/test.csv" 


        -- let upload = newRecord @Upload
        -- upload
            -- |> buildUpload
            -- |> uploadImageFile "csv" #fileUrl
            -- >>= ifValid \case
                -- Left upload -> render NewView { .. } 
                -- Right upload -> do
                    -- upload <- upload |> createRecord
                    -- setSuccessMessage "Upload created"
                    -- redirectTo UploadsAction

    action DeleteUploadAction { uploadId } = do
        upload <- fetch uploadId
        deleteRecord upload
        setSuccessMessage "Upload deleted"
        redirectTo UploadsAction

buildUpload upload = upload
    |> fill @'["fileUrl"]
