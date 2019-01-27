module Test.Conditional where

import Prelude ((&&), (||), ($), (+), (*), Unit, discard)
import Conditional ((?))
import Effect (Effect)
import Test.Unit (describe, it)
import Test.Unit.Main (runTest)
import Test.Unit.Assert (shouldEqual)


x :: Int
x = (false || true) ? (3 + 5) $ (5 * 2)

x' :: Int
x' = if (false || true) then (3 + 5) else (5 * 2)


y :: Int
y = (false && true) ? (3 + 5) $ (5 * 2)

y' :: Int
y' = if (false && true) then (3 + 5) else (5 * 2)



testConditional :: Effect Unit
testConditional = runTest do
  describe "ifelse" do
    it "should return the same value as the equivalent if else statement" $ do
      x `shouldEqual` x'
      y `shouldEqual` y'
