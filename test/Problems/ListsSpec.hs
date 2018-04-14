module Problems.ListsSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
import Control.Exception
import Problems.Lists
-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "myLast" $ do
    it "returns last element for a list of one element" $ do
      myLast [1] `shouldBe` 1
    it "returns last element for a list of many elements" $ do
      myLast ["foo","bar"] `shouldBe` "bar"
    it "should throw an exception for an empty list" $ do
      myLast [] `shouldThrow` anyException
  describe "myButLast" $ do
    it "returns last but one element of a list" $ do
     myButLast [1,2,3,4] `shouldBe` 3
    it "throws error on empty list" $ do
     myButLast [] `shouldThrow` anyException
    it "throws error if only one element in list" $ do
     (evaluate (myButLast [1])) `shouldThrow` anyException
  describe "elementAt" $ do
    it "should return correct element" $ do
     elementAt [1,2,3,4] 1 `shouldBe` 1
    it "should return correct element" $ do
     elementAt "hello" 1 `shouldBe` 'h'
    it "should return correct element even if last element" $ do
     elementAt [1,2,3,4] 4 `shouldBe` 4
    it "should work on infinite lists" $ do
     elementAt [1..] 1 `shouldBe` 1
    it "should work on infinite lists" $ do
     elementAt [1,2..] 5 `shouldBe` 5
  describe "myLength" $ do
    it "should return 0 for an empty list" $ do
     myLength [] `shouldBe` 0
    it "should return correct element" $ do
     myLength [1] `shouldBe` 1
    it "should return correct element even if last element" $ do
     myLength ["foo","bar"] `shouldBe` 2
