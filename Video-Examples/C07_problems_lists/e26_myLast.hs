-- list problem, last element
myLast :: [a] -> a
myLast = last

myLast' :: [a] -> a
myLast' [x] = x
myLast' (_ : xs) = myLast' xs