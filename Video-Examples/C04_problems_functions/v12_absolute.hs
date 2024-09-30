-- absolute value
absValue :: Int -> Int
absValue = abs

absValue' :: Int -> Int
-- absValue' x = if x <= 0 then (- x) else x
absValue' x 
    | x >= 0 = x
    | otherwise = -x
