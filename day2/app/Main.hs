module Main where

main :: IO ()
main = do
    input <- getContents
    print $ (sum . map (\(x:y:[]) -> getScore x y) . map (map getValue) . map words . lines) input

getValue :: String -> Int
getValue c = case c of
    "A" -> 1
    "X" -> 1
    "B" -> 2
    "Y" -> 2
    "C" -> 3
    "Z" -> 3

getScore :: Int -> Int -> Int 
getScore x y = case (x - y) `mod` 3 of
    0 -> y + 3
    1 -> y
    2 -> y + 6
