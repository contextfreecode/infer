-- {-# LANGUAGE ScopedTypeVariables #-}
import Text.Printf

-- enumerate :: (Num index, Enum index) => [item] -> [(index, item)]
-- enumerate = zip [0..]
-- enumerate :: [item] -> [(Int, item)]
enumerate = zip [(0 :: Int)..]

-- main :: IO ()
main = do
    let colors = ["red", "yellow", "blue"]
    -- let colors :: [String] = ["red", "yellow", "blue"]
    let showColor = uncurry $ printf "Color %d: %s"
    -- let showColor (index, color) = "Color " ++ (show index) ++ ": " ++ color
    -- mapM_ putStrLn $ map showColor $ (enumerate colors :: [(Int, String)])
    mapM_ putStrLn $ map showColor $ enumerate colors
