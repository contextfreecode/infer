module Main where

import Prelude
import Data.FoldableWithIndex (forWithIndex_)
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  let colors = ["red", "yellow", "blue"]
  forWithIndex_ colors \index color -> do
    log $ "Color " <> (show index) <> ": " <> color
