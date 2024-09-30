myButLast :: [a] -> a 
myButLast x = x !! (length x - 2)

myButLast' :: [a] -> a
-- second last element [x, _]
myButLast' [x, _] = x
-- head tail : (_ : xs)
myButLast' (_ : xs) = myButLast' xs

-- use func2nd . func1st
myButLast3 :: [a] -> a
myButLast3 = head . tail . reverse
-- head : [tail]
-- [init] last