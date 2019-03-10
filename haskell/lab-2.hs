safeDivision :: Int -> Int -> Int
safeDivision x 0 = maxBound :: Int
safeDivision x y = x `div` y

listAfter5 :: [Int] -> [Int]
listAfter5 [] = []
listAfter5 (5:x) = x
listAfter5 (x:y) = listAfter5 y

listUntil5 :: [Int] -> [Int]
listUntil5 [] = []
listUntil5 (5:_) = []
listUntil5 (x:y) = x:listUntil5 y

magicMath :: Integer -> Integer
magicMath x
	  | x `mod` 2 == 0 = x `div` 2
	  |otherwise            = x * 3 + 1

convertTime :: (Show a) => Integer -> a
convertTime x
	    | x < 60 = show x "seconds"
	    | x < 3600 = show (quot x 60) "minutes" (mod x 60) "seconds"
	    | otherwise = show (quot x 3600) "hours" (quot (mod x 3600) 60) "minutes" (mod x 60) "seconds"