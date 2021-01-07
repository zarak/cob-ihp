#!/usr/bin/env run-script
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

module Application.Script.Tweets where

import Application.Script.Prelude

import Data.Time (Day, parseTimeM, defaultTimeLocale)
import qualified Data.ByteString.Char8 as BS
import GHC.Generics (Generic)
import Data.Csv (FromNamedRecord, FromField (..))
import qualified Data.ByteString.Lazy as BL (readFile, writeFile)
import Data.Csv (decodeByName)
import Data.Foldable (toList)
import qualified Data.Text as T


data TweetData = 
    TweetData { date :: UTCTime
              , username :: Text
              , name :: Text
              , tweet :: Text
              , link :: Text
              , replies_count :: Int
              , retweets_count :: Int
              , likes_count :: Int
              }
    deriving (Generic, FromNamedRecord, Show)

instance FromField UTCTime where
    parseField = parseTimeM False defaultTimeLocale "%Y-%m-%d" . BS.unpack

data TField = Replies | Retweets | Likes
    deriving (Eq, Ord, Show, Enum, Bounded)

readTweets :: FilePath -> IO [TweetData]
readTweets fpath = do
    csvData <- BL.readFile fpath
    case decodeByName csvData of
      Left err -> error (T.pack err)
      Right (_, quotes) -> pure (toList quotes)

run :: Script
run = do
    tweets <- readTweets "Application/Script/past_ten_days_isb_5km.csv"
    let postsToBeInserted = map tweetToPost tweets
    users <- createMany postsToBeInserted
    putStrLn "New posts inserted into database"

tweetToPost TweetData {..} =
    newRecord @Post
            |> set #author username
            |> set #createdAt date
            |> set #body tweet
            |> set #link link
