module Web.View.Predictions.Show where
import Web.View.Prelude

data ShowView = ShowView { prediction :: Prediction }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PredictionsAction}>Predictions</a></li>
                <li class="breadcrumb-item active">Show Prediction</li>
            </ol>
        </nav>
        <h1>Show Prediction</h1>
        <p>{prediction}</p>
    |]
