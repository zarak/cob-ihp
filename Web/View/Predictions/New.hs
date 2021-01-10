module Web.View.Predictions.New where
import Web.View.Prelude

data NewView = NewView { prediction :: Prediction }

instance View NewView where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PredictionsAction}>Predictions</a></li>
                <li class="breadcrumb-item active">New Prediction</li>
            </ol>
        </nav>
        <h1>New Prediction</h1>
        {renderForm prediction}
    |]

renderForm :: Prediction -> Html
renderForm prediction = formFor prediction [hsx|
    {(textField #postId)}
    {(textField #labels)}
    {submitButton}
|]
