fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fibTail :: Int -> Int
fibTail n = fibHelper n 0 1

fibHelper :: Int -> Int -> Int -> Int
fibHelper 0 a b = a
fibHelper 1 a b = b
fibHelper n a b = fibHelper (n - 1) b (a + b)
-- tail recursive: do the calculation in the parameters