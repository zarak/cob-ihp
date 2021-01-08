import Application.Script.Prelude

import GHC.Generics(Generic)
import qualified Data.ByteString.Char8 as BS
import qualified Data.ByteString.Lazy as BL
import Network.HTTP.Simple
import Data.Aeson.Types (parseEither)


myToken :: BS.ByteString
myToken = "Bearer api_CPGJoyBEcgIIsONNdwmxRvMjcqLIiSvgoZ"

hfHost :: BS.ByteString
hfHost = "api-inference.huggingface.co"

modelPath :: BS.ByteString
modelPath = "/models/unitary/toxic-bert"

myBody :: BL.ByteString
myBody = "This is a sample input"

data ToxicCategory =
    ToxicCategory { label :: String
                  , score :: Double
                  } deriving (Show, Generic)


data ToxicInference =
    ToxicInference 
      | Toxic Double
      | SevereToxic Double
      | Obscene Double
      | Threat Double
      | Insult Double
      | IdentityHate Double
    deriving (Show)


instance FromJSON ToxicCategory
instance ToJSON ToxicCategory


mkToxicInference :: BL.ByteString -> Maybe [ToxicInference]
mkToxicInference input = do
    result <- decode input :: Maybe [[ToxicCategory]]
    let f r = case label r of
                "toxic" -> Just (Toxic (score r))
                "severe_toxic" -> Just (SevereToxic (score r))
                "obscene" -> Just (Obscene (score r))
                "threat" -> Just (Threat (score r))
                "insult" -> Just (Insult (score r))
                "identity_hate" -> Just (IdentityHate (score r))
                _ -> Nothing
    mapM f (concat result)

buildRequest :: BS.ByteString -> BL.ByteString -> Request
buildRequest token body =
    setRequestHeader "Authorization" [token]
    $ setRequestHeader "User-Agent" ["Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"]
    $ setRequestHeader "Content-Type" ["application/json"]
    $ setRequestHeader "Accept" ["*/*"]
    $ setRequestBodyLBS body
    $ request'
        where request' = "POST https://api-inference.huggingface.co/models/unitary/toxic-bert"


callApi :: IO ()
callApi = do
    let req = buildRequest myToken myBody
    response <- httpLBS req 
    let x = case mkToxicInference (getResponseBody response) of
              Nothing -> [Toxic 0]
              Just a -> a
    putStr (show x)
