module RowPoly where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Record (merge)

main :: Effect Unit
main = do
  log $ show $ withSum { a: 1, b: 2, c: 100 }
  log $ show $ withSumAb { a: 1, b: 2 }

-- withSum :: forall x r. Semiring x =>
--   { a :: x, b :: x | r } -> { a :: x, b :: x, sum :: x | r }
withSum abPlus = merge abPlus { sum: abPlus.a + abPlus.b }

withSumAb :: forall x. Semiring x =>
  { a :: x, b :: x } -> { a :: x, b :: x, sum :: x }
withSumAb = withSum
