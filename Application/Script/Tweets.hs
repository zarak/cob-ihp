#!/usr/bin/env run-script
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}

module Application.Script.Tweets where

import           Application.Script.Inference
import           Application.Script.Prelude hiding (predictions)
import qualified Data.ByteString.Char8        as BS
import qualified Data.ByteString.Lazy         as BL
import           Data.Csv                     (decodeByName)
import           Data.Foldable                (toList)
import qualified Data.Text                    as T
import qualified Data.Text.Encoding           as TE
import           Data.Time                    (defaultTimeLocale, parseTimeM)
import           GHC.Generics                 (Generic)
-- import           Network.HTTP.Simple
import Network.HTTP.Client
import Network.HTTP.Client.TLS

host :: BS.ByteString
host = "localhost"

path :: BS.ByteString
path = "/model/predict"

readTweets :: FilePath -> IO [TweetData]
readTweets fpath = do
    csvData <- BL.readFile fpath
    case decodeByName csvData of
      Left err          -> error (T.pack err)
      Right (_, quotes) -> pure (toList quotes)

run :: Script
run = do
    tweets <- readTweets "Application/Script/subset_data.csv"
    batch <- callApi tweets
    case batch of 
      Nothing -> putStrLn "Error getting batch of predictions"
      Just b -> do
          let (tweetsToInsert, predictionsToInsert) = unzip $ createMap b tweets
          -- First insert posts into the database
          posts <- createMany (map tweetToPost tweetsToInsert)
          -- Then insert predictions using the ids of the posts
          let x = map (\(pred, post) -> predToPrediction pred (get #id post) ) $ zip predictionsToInsert posts
          preds <- createMany x
          putStrLn "Saved to db"

tweetToPost :: TweetData -> Post
tweetToPost (TweetData {..}) =
    newRecord @Post
            |> set #author username
            |> set #createdAt date
            |> set #body tweet
            |> set #link link

predToPrediction :: Predictions -> Id' "posts" -> Prediction
predToPrediction pred postId =
    let x = (decode (encode pred) :: Maybe Value)
    in case x of
         Nothing -> newRecord @Prediction
         Just a -> 
            newRecord @Prediction
                    |> set #postId postId
                    |> set #labels a

callApi :: [TweetData] -> IO (Maybe MAXBatch)
callApi tweets = do
    --
    -- 1. Create POST request
    mgr <- newManager tlsManagerSettings
    initialRequest <- parseRequest "http://localhost:5000/model/predict"
    let request = initialRequest { method = "POST"
        , requestBody = RequestBodyLBS $ encode (TweetsText tweets)
        , requestHeaders =
            [ ("Content-Type", "application/json; charset=utf-8")
            ]
                                 , responseTimeout = responseTimeoutNone
        }

    response <- httpLbs request mgr

    -- 1. Classify batch of tweets
    let res = responseBody response
    pure (decode res :: Maybe MAXBatch)

-- tweet2pred :: Map TweetData Predictions
-- tweet2pred =
    -- undefined

extractTweetText :: MAXBatch -> Text -> Maybe Predictions
extractTweetText batch tweet = do
    x <- head $ filter (\result -> (original_text result) == tweet) $ results batch 
    pure $ predictions x

createMap :: MAXBatch -> [TweetData] -> [(TweetData, Predictions)]
createMap batch = map (\tweetData -> (tweetData, getPred tweetData) )
    where getPred tweetData = case extractTweetText batch (tweet tweetData) of
                                Nothing -> Predictions { toxic = 0
                                                       , severe_toxic = 0
                                                       , insult = 0
                                                       , obscene = 0
                                                       , threat = 0
                                                       , identity_hate = 0
                                                       }
                                Just a -> a

