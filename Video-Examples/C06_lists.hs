-- v21 List Constructors
emptyList :: [a]
emptyList = []

-- a : [List]
addAhead :: a -> [a] -> [a]
addAhead a list = a : list

-- create list with []
list01 :: [Integer]
list01 = [1, 2, 3, 4]

-- add elements in the front of a list
list02 :: a -> a -> a -> [a] -> [a]
list02 x y z list = x : y : z : list

-- v22: List and Patterns
-- (x : xs) = head : [tail] 
-- list = [index] tail
-- (h : s : t) = [2, 5, 8, ...], h = 2, s = 5, t = [8, ..]


-- v23: Syntax in Patterns
-- pattern decomposition can also be used on case, where, let-in
-- sum with case
sum' :: Num a => [a] -> a
sum' list = 
    case list of
        []       -> 0
        (x : xs) -> x + sum' xs

-- first and second with let-in
fstAndSnd list = 
    let (f : s : r) = list
        -- result store in tuple
        in (f, s)


-- v24: Texts / String
-- String == [char]


-- v25: Common Functions of Lists   
{-
    indexing: !!
    concatenation: ++, append elements of a list into the end of another list
    maximum, minimum
    sum, product
    take: take the first n elements in list
    drop: drop the first n elements in list
    zip: take 2 list -> tuple
    unzip: tuple -> 2 lists
    repeat: genterate an infinite list with the element x
    concat: open one layer of []
    map: applies a function to elements in a list
-}