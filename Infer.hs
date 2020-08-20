-- {-# LANGUAGE ScopedTypeVariables #-}
import Text.Printf

-- enumerate :: (Num index, Enum index) => [item] -> [(index, item)]
-- enumerate :: [item] -> [(Int, item)]
enumerate = zip [(0 :: Int)..]

-- main :: IO ()
main = do
    let colors = ["red", "yellow", "blue"]
        showColor = uncurry $ printf "Color %d: %s"
        indexedColors = enumerate colors  -- :: [(Int, String)]
    mapM_ putStrLn $ map showColor indexedColors
