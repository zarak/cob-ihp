#!/usr/bin/env run-script
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}

module Application.Script.Tweets where

import           Application.Script.Inference
import           Application.Script.Prelude
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




-- getBatchPredictions res = do
    -- let x = decode res :: Maybe MAXBatch
    -- putStr x


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


-- classifyTweets :: TweetsText -> IO ([ToxicInference])
-- classifyTweets tweets = do
    -- response <- callApi IBMMax tweets
    -- pure response

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

