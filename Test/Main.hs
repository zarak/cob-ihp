module Test.Main where

import Test.Hspec
import IHP.Prelude
import qualified Test.Web.Controller.PostSpec

main :: IO ()
main = hspec do
    Test.Web.Controller.PostSpec.spec
