power :: Int -> Int -> Int
power x 0 = 1
power x a = x * power x (a - 1)