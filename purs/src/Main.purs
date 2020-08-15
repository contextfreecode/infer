module Main where

import Prelude
import Record (merge)

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  let answer = f { a: 1, b: 2, c: 100 }
  log $ show answer.sum
  log $ show answer.c

-- f :: { a :: x, b :: x | r } -> { a :: x, b :: x, sum :: x | r }
f t = merge t { sum: t.a + t.b }
