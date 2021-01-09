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


-- myToken :: BS.ByteString
-- myToken = "Bearer api_CPGJoyBEcgIIsONNdwmxRvMjcqLIiSvgoZ"

host :: BS.ByteString
-- host = "api-inference.huggingface.co"
host = "localhost"

path :: BS.ByteString
-- path = "/models/unitary/toxic-bert"
path = "/model/predict"

-- myBody :: BL.ByteString
-- myBody = "This is a sample input"

data ToxicCategory =
    ToxicCategory { label :: String
                  , score :: Double
                  } deriving (Show, Generic)

type HuggingFaceJson = [[ToxicCategory]]
-- TODO: Complete this type
type IBMMaxJson = [ToxicCategory]

data ToxicInference =
    ToxicInference
      | Toxic Double
      | SevereToxic Double
      | Obscene Double
      | Threat Double
      | Insult Double
      | IdentityHate Double
    deriving (Show)

data InferenceEndpoint =
        HuggingFace
      | IBMMax
    deriving Show

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

instance FromJSON ToxicCategory
instance ToJSON ToxicCategory

newtype TweetsText =
    TweetsText [TweetData]
    deriving (Show)

instance ToJSON TweetsText where
    toJSON (TweetsText tweets) =
        object [ "text" .= map tweet tweets ]

maybeInference r = case label r of
          "toxic"         -> Just (Toxic (score r))
          "severe_toxic"  -> Just (SevereToxic (score r))
          "obscene"       -> Just (Obscene (score r))
          "threat"        -> Just (Threat (score r))
          "insult"        -> Just (Insult (score r))
          "identity_hate" -> Just (IdentityHate (score r))
          _               -> Nothing

mkToxicInference :: BL.ByteString -> InferenceEndpoint -> Maybe [ToxicInference]
mkToxicInference input endpoint =
    case endpoint of
      HuggingFace -> do
        result <- decode input :: Maybe HuggingFaceJson
        mapM maybeInference (concat result)
      IBMMax -> do
        result <- decode input :: Maybe IBMMaxJson
        mapM maybeInference result

buildRequest :: TweetsText -> Request
buildRequest tweetList =
      setRequestMethod "POST"
    -- $ setRequestHeader "Authorization" [myToken]
    $ setRequestPort 5000
    $ setRequestHost host
    $ setRequestPath path
    $ setRequestHeader "Content-Type" ["application/json"]
    $ setRequestBodyJSON tweetList
    $ defaultRequest
        --where request' = "POST https://api-inference.huggingface.co/models/unitary/toxic-bert"


callApi :: InferenceEndpoint -> TweetsText -> IO ([ToxicInference])
callApi endpoint tweetList = do
    let req = buildRequest tweetList
    response <- httpLBS req
    let x = case mkToxicInference (getResponseBody response) endpoint of
              Nothing -> [Toxic 0]
              Just a  -> a
    pure x
