module Test.Main where

import Prelude

import Effect (Effect)
import Test.Conditional (testConditional)

main :: Effect Unit
main = testConditional