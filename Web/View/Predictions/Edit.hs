module Web.View.Predictions.Edit where
import Web.View.Prelude

data EditView = EditView { prediction :: Prediction }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PredictionsAction}>Predictions</a></li>
                <li class="breadcrumb-item active">Edit Prediction</li>
            </ol>
        </nav>
        <h1>Edit Prediction</h1>
        {renderForm prediction}
    |]

renderForm :: Prediction -> Html
renderForm prediction = formFor prediction [hsx|
    {(textField #postId)}
    {(textField #labels)}
    {submitButton}
|]
