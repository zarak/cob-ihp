module Web.Controller.Predictions where

import Web.Controller.Prelude
import Web.View.Predictions.Index
import Web.View.Predictions.New
import Web.View.Predictions.Edit
import Web.View.Predictions.Show

instance Controller PredictionsController where
    action PredictionsAction = do
        predictions <- query @Prediction |> fetch
        render IndexView { .. }

    action NewPredictionAction = do
        let prediction = newRecord
        render NewView { .. }

    action ShowPredictionAction { predictionId } = do
        prediction <- fetch predictionId
        render ShowView { .. }

    action EditPredictionAction { predictionId } = do
        prediction <- fetch predictionId
        render EditView { .. }

    action UpdatePredictionAction { predictionId } = do
        prediction <- fetch predictionId
        prediction
            |> buildPrediction
            |> ifValid \case
                Left prediction -> render EditView { .. }
                Right prediction -> do
                    prediction <- prediction |> updateRecord
                    setSuccessMessage "Prediction updated"
                    redirectTo EditPredictionAction { .. }

    action CreatePredictionAction = do
        let prediction = newRecord @Prediction
        prediction
            |> buildPrediction
            |> ifValid \case
                Left prediction -> render NewView { .. } 
                Right prediction -> do
                    prediction <- prediction |> createRecord
                    setSuccessMessage "Prediction created"
                    redirectTo PredictionsAction

    action DeletePredictionAction { predictionId } = do
        prediction <- fetch predictionId
        deleteRecord prediction
        setSuccessMessage "Prediction deleted"
        redirectTo PredictionsAction

buildPrediction prediction = prediction
    |> fill @["postId","labels"]
