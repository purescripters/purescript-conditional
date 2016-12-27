module Test.Conditional where

import Prelude ((&&), (||), ($), (+), (*), Unit, bind)
import Conditional ((?))
import Control.Monad.Eff (Eff)
import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Eff.Console (CONSOLE)
import Test.Unit (describe, it)
import Test.Unit.Main (runTest)
import Test.Unit.Assert (shouldEqual) 
import Test.Unit.Console (TESTOUTPUT)


x :: Int
x = (false || true) ? (3 + 5) $ (5 * 2)

x' :: Int
x' = if (false || true) then (3 + 5) else (5 * 2)


y :: Int
y = (false && true) ? (3 + 5) $ (5 * 2)

y' :: Int
y' = if (false && true) then (3 + 5) else (5 * 2)



main :: forall e
      . Eff (console :: CONSOLE, testOutput :: TESTOUTPUT, avar :: AVAR | e) Unit
main = runTest do
  describe "ifelse" do
    it "should return the same value as the equivalent if else statement" $ do
      x `shouldEqual` x' 
      y `shouldEqual` y'
