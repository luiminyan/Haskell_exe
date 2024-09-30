-- 4.1 fakultaet
falcultaet :: Int -> Int
falcultaet 0 = 1
falcultaet n = n * falcultaet (n - 1)


falcultaet' :: Int -> Int
falcultaet' 0 = 1
falcultaet' n
    | n > 0 = n * falcultaet' (n - 1)
    | otherwise = error "Inout muss be a natural number!"


-- lambda falcultaet
falcultaet'' :: Int -> Int
falcultaet'' = \n -> (if n == 1 then 1 else (n * falcultaet'' (n - 1)))


-- 4.2 linear recursion
ggT :: Int -> Int -> Int
ggT n m
    | n > m = ggT (n - m) m
    | n < m = ggT n (m - n)
    | otherwise = ggT m (mod n m)


-- 4.3 cascade recursion
fib :: Int -> Int
fib n
    | n == 0 = 0
    | n == 1 = 1
    | n > 1 = fib (n - 1) + fib (n - 2)


-- 4.4 connected recursion
-- the argument of a recusive function is determined by a recursion itself
ack :: Int -> Int -> Int
ack x y
    | y == 0 = x + 1
    | x == 0 && y > 0 = ack 1 (y - 1)
    | x > 0 && y > 0 = ack (ack (x - 1) y) (y - 1)


-- 4.5 wechselseitige recursion
-- recusion functions call each other
isGerade x 
    | x == 0 = True
    | otherwise = isUngerade (x - 1)

isUngerade x
    | x == 0 = False
    | otherwise = isGerade (x - 1)

-- 4.6 tail recursion
sumTo :: Int -> Int
sumTo n = sumTo' n 0

sumTo' :: Int -> Int -> Int
sumTo' 0 a = a
sumTo' n a = sumTo' (n - 1) (a + n)


-- 4.7 
-- A1.2: kleinster gemeinsamer Vielfachen
kgV :: Int -> Int -> Int
kgV x y = let g = ggT x y
    in div x g * div y g