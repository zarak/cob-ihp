import Application.Script.Prelude

import GHC.Generics(Generic)
import qualified Data.ByteString.Char8 as BS
import qualified Data.ByteString.Lazy as BL
import Network.HTTP.Simple
import Data.Aeson.Types (parseEither)


myToken :: BS.ByteString
myToken = undefined

hfHost :: BS.ByteString
hfHost = undefined

modelPath :: BS.ByteString
modelPath = undefined

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
    result <- decode input :: Maybe [ToxicCategory]
    let f r = case label r of
                "toxic" -> Just (Toxic (score r))
                "severe_toxic" -> Just (SevereToxic (score r))
                "obscene" -> Just (Obscene (score r))
                "threat" -> Just (Threat (score r))
                "insult" -> Just (Insult (score r))
                "identity_hate" -> Just (IdentityHate (score r))
                _ -> Nothing
    mapM f result
