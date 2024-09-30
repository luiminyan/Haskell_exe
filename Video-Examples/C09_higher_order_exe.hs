import Data.Tree (flatten)
import Distribution.Simple.Program.HcPkg (list)
-- v34: compare if two lists are the same
eql :: [Int] -> [Int] -> Bool
eql x y 
    | length x /= length y  = False
    | otherwise             = and $ zipWith (==) x y
    
-- zip: [a] -> [b] -> [(a, b)]
-- zipWith: (a -> b -> c) -> [a] -> [b] ->[c]
-- and: [a] -> Bool

-- v35
prod :: [Int] -> Int
prod = foldl (*) 1


-- v36
prodEvens :: [Int] -> Int
prodEvens = product . filter even


-- v37
powersOf2 :: [Int]
powersOf2 = [ 2 ^ x | x <- [0..]]
-- powersOf2 = iterate (* 2) 1

-- v38 & v39
scalarProduct :: [Float] -> [Float] -> Float
scalarProduct xs ys = sum $ zipWith (*) xs ys

-- v40
flatten :: [[Int]] -> [Int]
flatten = foldl (++) []
-- flatten = concat


-- v41
myLength :: String -> Int
myLength = foldl (+) 0 . map (const 1)
--  . : composition of functions



-- v42
-- flip: flip the order of arguments
-- : is also an operator
-- use foldl for :
myReverse :: [Int] -> [Int]
myReverse = foldl (flip (:)) []


-- 43 not done
countIn :: [[Int]] -> Int -> [Int]
countIn l s = concat l


-- 44 
firstWord :: String -> String
firstWord = takeWhile (/= ' ') 


-- 45
countIf :: (Int -> Bool) -> [Int] -> Int
countIf cond list = length $ filter cond list 

-- 46
-- combined [1,2,3] [(+1),(*2),(^2)]    [[2,3,4],[2,4,6],[1,4,9]]
combined :: [Int] -> [Int -> Int] -> [[Int]]
combined xs ys = [[o e | e <- xs] | o <- ys]


-- 47 
-- consecutive [1,2,3] [(+1),(*2),(^2)] [[2,2,1],[3,4,4],[4,6,9]]
consecutive :: [Int] -> [Int -> Int] -> [[Int]]
consecutive xs ys = [[o e | o <- ys] | e <- xs]


-- 48
filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int
filterFoldl cond opr s list = foldl opr s $ filter cond list 
-- filterFoldl cond opr s list = foldl opr s [e | e <- list, cond e] 
-- filter cond l = [e | e <- l , cond e]

