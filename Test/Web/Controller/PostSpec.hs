module Test.Web.Controller.PostSpec where

import           Network.HTTP.Types.Status (status200)

import           Test.Hspec
import           IHP.Test.Mocking
import           IHP.FrameworkConfig (ConfigBuilder(..))
import           IHP.Prelude
import           IHP.QueryBuilder (fetch, query)

import           Web.Types
import           Web.Routes
import           Generated.Types
import           Main ()
import           Config
import qualified Data.ByteString.Lazy as LBS


makeConfig :: IO ConfigBuilder
makeConfig = do
    pure config

spec :: Spec
spec = beforeAll (makeConfig >>= mockContext WebApplication) do
  describe "User controller" $ do
    it "responds with some HTML content" $ withContext do
      content <- mockActionResponse NewUserAction
      LBS.isPrefixOf "<!DOCTYPE HTML>" content `shouldBe` True

    it "creates a new user" $ withParams [("firstName", "Test"), ("lastName", "Other"), ("email", "test@test.com"), ("passwordHash", "1234test"), ("password2", "1234test")] do
      mockActionStatus CreateUserAction `shouldReturn` status200

    -- it "returns a redirect header" $ withContext do
      -- hs <- headers (mockAction NewUserAction)
      -- putStr $ show hs
      -- lookup "Location" hs `shouldNotBe` Nothing

  describe "Admin controller" $ do
    it "has existing admins" $ withContext do
      admins <- query @Admin |> fetch
      admins `shouldNotBe` []
