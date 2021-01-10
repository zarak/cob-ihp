module Web.View.Predictions.Index where
import Web.View.Prelude

data IndexView = IndexView { predictions :: [Prediction] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href={PredictionsAction}>Predictions</a></li>
            </ol>
        </nav>
        <h1>Index <a href={pathTo NewPredictionAction} class="btn btn-primary ml-4">+ New</a></h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Prediction</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach predictions renderPrediction}</tbody>
            </table>
        </div>
    |]


renderPrediction prediction = [hsx|
    <tr>
        <td>{prediction}</td>
        <td><a href={ShowPredictionAction (get #id prediction)}>Show</a></td>
        <td><a href={EditPredictionAction (get #id prediction)} class="text-muted">Edit</a></td>
        <td><a href={DeletePredictionAction (get #id prediction)} class="js-delete text-muted">Delete</a></td>
    </tr>
|]
