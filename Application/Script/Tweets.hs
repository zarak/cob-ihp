#!/usr/bin/env run-script
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}

module Application.Script.Tweets where

import           Application.Script.Inference
import           Application.Script.Prelude
import qualified Data.ByteString.Char8        as BS
import qualified Data.ByteString.Lazy         as BL (readFile)
import           Data.Csv                     (decodeByName)
import           Data.Foldable                (toList)
import qualified Data.Text                    as T
import qualified Data.Text.Encoding           as TE
import           Data.Time                    (defaultTimeLocale, parseTimeM)
import           GHC.Generics                 (Generic)
import           Network.HTTP.Simple


readTweets :: FilePath -> IO [TweetData]
readTweets fpath = do
    csvData <- BL.readFile fpath
    case decodeByName csvData of
      Left err          -> error (T.pack err)
      Right (_, quotes) -> pure (toList quotes)

run :: Script
run = do
    tweets <- readTweets "Application/Script/past_ten_days_isb_5km.csv"

    -- Classify batch of tweets here
    results <- classifyTweets (TweetsText tweets)
    putStr "COOL"


    -- let postsToBeInserted = map tweetToPost classifiedTweets
    -- users <- createMany postsToBeInserted
    -- putStrLn "New posts inserted into database"

tweetToPost :: TweetData -> Post
tweetToPost TweetData {..} =
    newRecord @Post
            |> set #author username
            |> set #createdAt date
            |> set #body tweet
            |> set #link link


classifyTweets :: TweetsText -> IO ([ToxicInference])
classifyTweets tweets = do
    response <- callApi IBMMax tweets
    pure response

