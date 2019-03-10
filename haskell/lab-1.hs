getAverage :: [Integer] -> Double
getAverage [] = 0
getAverage lst = (fromIntegral (sum lst)) / (fromIntegral (length lst))

kindaPrimes :: Integer -> Integer
kindaPrimes bound = (sum [x | x <- [1..bound-1], (not (x `mod` 2 == 0)), (not (x `mod` 3 == 0))])

getDigits :: Integer -> [Integer] -> [Integer]
getDigits num total = if num == 0
					then total
					else (getDigits ((fromIntegral (num - (num `mod` 10))) / (fromIntegral 10)) ((num `mod` 10) : total))


