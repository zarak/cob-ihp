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
    putStrLn "New posts inserted into database"

tweetToPost :: TweetData -> Post
tweetToPost TweetData {..} =
    newRecord @Post
            |> set #author username
            |> set #createdAt date
            |> set #body tweet
            |> set #link link

predToPrediction :: Predictions -> Id' "posts" -> Prediction
predToPrediction pred postId =
    newRecord @Prediction
            |> set #postId postId
            |> set #labels _todo

callApi :: IO (Maybe MAXBatch)
callApi = do
    tweets <- readTweets "Application/Script/subset_data.csv"
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

createMap :: MAXBatch -> [TweetData] -> [(TweetData, Maybe Predictions)]
createMap batch = map (\tweetData -> (tweetData, extractTweetText batch (tweet tweetData)))
