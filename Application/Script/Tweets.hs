#!/usr/bin/env run-script
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

module Application.Script.Tweets where

import Application.Script.Prelude

import Data.Time (Day, parseTimeM, defaultTimeLocale)
import Data.ByteString.Char8 (unpack)
import GHC.Generics (Generic)


-- Used for parsing CSV and also computing stats
data TweetData = TweetData
    { day :: Day
    , username :: Text
    , name :: Text
    , tweet :: Text
    , link :: Text
    }

run :: Script
run = do
    putStrLn "Hello World!"


--work :: Params -> IO ()
--work = undefined

--readTweets :: FilePath -> IO TweetDataCollection
--readTweets = undefined

--statInfo :: TweetDataCollection -> StatInfo
--statInfo = undefined

--textReport :: StatInfo -> String
--textReport = undefined

--plotChart :: TweetDataCollection -> IO ()
--plotChart = undefined

--htmlReport :: TweetDataCollection -> StatInfo -> Html
--htmlReport = undefined

--saveHtml :: FilePath -> Html -> IO ()
--saveHtml = undefined
