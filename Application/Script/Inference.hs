{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}
module Application.Script.Inference where

import           Application.Script.Prelude

import           Data.Aeson.Types           (parseEither)
import qualified Data.ByteString.Char8      as BS
import qualified Data.ByteString.Lazy       as BL
import           GHC.Generics               (Generic)
import           Network.HTTP.Simple
import           Data.Csv                     (FromField (..), FromNamedRecord)



-- myBody :: BL.ByteString
-- myBody = "This is a sample input"

data Predictions = 
    Predictions { toxic :: Double
                , severe_toxic :: Double
                , obscene :: Double
                , threat :: Double
                , insult :: Double
                , identity_hate :: Double 
                } deriving (Show, Generic)

data Results =
    Results { original_text :: Text
            , predictions :: Predictions
            } deriving (Show, Generic)

data MAXBatch =
    MAXBatch { results :: [Results] }
    deriving (Show, Generic)

instance FromJSON Predictions
instance ToJSON Predictions
instance FromJSON Results
instance FromJSON MAXBatch

data TweetData =
    TweetData { date           :: UTCTime
              , username       :: Text
              , name           :: Text
              , tweet          :: Text
              , link           :: Text
              , replies_count  :: Int
              , retweets_count :: Int
              , likes_count    :: Int
              }
    deriving (Generic, FromNamedRecord, Show)

instance FromField UTCTime where
    parseField = parseTimeM False defaultTimeLocale "%Y-%m-%d" . BS.unpack

data TField = Replies | Retweets | Likes
    deriving (Eq, Ord, Show, Enum, Bounded)

newtype TweetsText =
    TweetsText [TweetData]
    deriving (Show)

instance ToJSON TweetsText where
    toJSON (TweetsText tweets) =
        object [ "text" .= map tweet tweets ]

