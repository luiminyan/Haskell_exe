-- calculates the double of a value
double :: Int -> Int
double x = 2 * x

-- calculate perimeter of a rectangle
perimeter :: Int -> Int -> Int
perimeter w h = double (w + h)

-- exclusive xor
xOr :: Bool -> Bool -> Bool
xOr a b = (a || b) && not (a && b)

-- define function by pattern
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- anonymous variable
nand :: Bool -> Bool -> Bool
nand True True = True
nand _ _ = True

-- define funcs with guard
valAbs :: Int -> Int
valAbs n
    | n >= 0    = n
    | otherwise = -n

