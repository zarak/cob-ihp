import Application.Script.Prelude

import GHC.Generics(Generic)
import qualified Data.ByteString.Char8 as BS
import Network.HTTP.Simple


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
    (Maybe ToxicCategory)
    (Maybe ToxicCategory)
    (Maybe ToxicCategory)
    (Maybe ToxicCategory)
    (Maybe ToxicCategory)
    (Maybe ToxicCategory)
    deriving (Show, Generic)


instance FromJSON ToxicCategory
instance ToJSON ToxicCategory

instance FromJSON ToxicInference
