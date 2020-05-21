module AreaUnderCurveSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import AreaUnderCurve

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "calculate a simple area" $ do
    it "should solve for area" $ do
      (solve 1 4 [1, 2, 3, 4, 5] [6, 7, 8, 9, 10]) `shouldBe` [2435300.3, 26172951168940.8]
