module K5 (
    istKlein,
    machGroess
    ) where
-- module M (...,...,) where

import Data.Char

-- 5.1
zahlenListe :: [Int]
zahlenListe = [1, 2, 3, 4, 5]

leereListe :: [a]
leereListe = []

zeichenKette = "hallo"
zeichenKette' = ['h', 'a', 'l', 'l', 'o']
-- zeichenKette == zeichenKette'

-- type of elements muss be the same
-- unmatchedList :: [[a]]
-- unmatchedList = [[1, 2], ['a', 'b']]


-- 5.1.1 Head - Rest - Principle
erstes :: [a] -> a
erstes (x:_) = x

-- rest = tail :[rest]
rest :: [a] -> [a]
rest (_:xs) = xs

-- 5.1.2
-- letztes
letztes :: [a] -> a
letztes [s] = s
letztes (_:xs) = letztes xs


-- ohneletztes
ohneletztes :: [a] -> [a]
ohneletztes [s] = []
ohneletztes (h:xs) = h :ohneletztes xs


-- erhalten
erhalten :: Eq a => [a] -> a -> Bool
erhalten [] y = False
erhalten (h:xs) y = (h == y) || erhalten xs y
-- alternative: use foldr <see k6>

-- elementAt
elementAt' :: Int -> [a] -> a
elementAt' 0 (x:_) = x
elementAt' n (_:xs) = elementAt' (n - 1) xs

-- use !! instead
elementAt :: [a] -> Int -> a
elementAt l n = l !! n


-- 5.1.3 concatnation of lists
fassenzusammen :: [a] -> [a] -> [a]
fassenzusammen a b = a ++ b

fassZuRec :: [a] -> [a] -> [a]
fassZuRec [] ys = ys
fassZuRec (x : xs) ys = x : fassZuRec xs ys

-- listenZusammenfassen 
listenZusammenfassen :: [[a]] -> [a]
listenZusammenfassen [] = []
listenZusammenfassen (x : xs) = x ++ listenZusammenfassen xs


-- 5.1.4 listen erzeugen
geradeListe :: Integral a => [a] -> [a]
geradeListe l = [e | e <- l, mod e 2 == 0]


ungeradeListe :: [Int] -> [Int]
-- 2nd condition: positive number
ungeradeListe l = [e | e <- l, mod e 2 /= 0, e >= 0]


quadratListe :: Integral a => [a] -> [a]
quadratListe x = [e * e | e <- x]


-- 5.1.5 autoimatic filling

-- 5.1.7 Listen erzeugen
nimm :: Int -> [a] -> [a]
nimm _ [] = []
nimm 0 _ = []
nimm n (x : xs) = x : nimm (n - 1) xs


nimmNicht :: Int -> [a] -> [a]
nimmNicht 0 xs = xs
nimmNicht _ [] = []
nimmNicht n (_ : xs) = nimm (n - 1) xs



-- 5.2 Tupel
erstesElement :: (a, b) -> a
erstesElement (x, _) = x

drittesElement :: (a, b, c) -> c
drittesElement (_, _, z) = z

-- fst, snd
zweitesElement :: (a, b) -> b
zweitesElement = snd


-- 5.3 Zeichenkette
istKlein :: Char -> Bool
istKlein c = 'a' <= c && c <= 'z'

machGroess :: Char -> Char
machGroess c 
    | istKlein c    = chr (ord c + offset)
    | otherwise     = c
        where offset = ord 'A' - ord 'a'

-- 5.4
-- a1
skalarProdukt :: [Int] -> [Int] -> Int
skalarProdukt [] [] = 0
skalarProdukt (x : xr) (y : yr) = (x * y) + skalarProdukt xr yr
-- otherwise
skalarProdukt _ _ = error "The vectores are not of equal length!"


-- a2
letztes' :: [a] -> a
letztes' x = x !! (length x - 1)


-- a3 : ++ append at last
dreheUm :: [a] -> [a]
dreheUm [] = []
dreheUm (x : xs) = dreheUm xs ++ [x]


-- a4: sum [list]
euler1 :: Int -> Int
euler1 n = sum [e | e <- [0 .. n], mod e 3 == 0 || mod e 5 == 0]


-- a5:
fibNum :: Int -> Int
fibNum 0 = 0
fibNum 1 = 1
fibNum n = fibNum (n - 1) + fibNum (n - 2)
