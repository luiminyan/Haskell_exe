import K5 (istKlein, machGroess)

-- k6 höherer Funktionen
-- 6.1 map
mapListe :: (a -> b) -> [a] -> [b]
mapListe f xs = [f x | x <- xs]
-- map ::  (a -> b) -> [a] -> [b]

-- 6.2 filtern
filternListe :: (a -> Bool) -> [a] -> [a]
filternListe f [] = []
filternListe f (x : xs)
    | f x       = x : filternListe f xs
    | otherwise =  filternListe f xs
-- filternListe f xs = [x | x <- xs, f x]
-- filternListe (\ x -> x > 4) [1, 2, 5, 7]

-- 6.3 Faltung / foldr

-- 6.9 Übungen
-- 5.3 reverse
reverseListe :: [a] -> [a]
reverseListe [] = []
reverseListe (x:xs) = reverseListe xs ++ [x]

-- 6.9.1 umdrehen
umdrehen :: forall a. [a] -> [a]
umdrehen = foldl (flip (:)) []
-- flip: flip the elements order for : 

-- 6.9.2 summe
summe :: [Int] -> Int
summe = foldl (+) 0

-- 6.9.3 produkt
produkt :: [Int] -> Int
produkt = foldr (*) 1

produkt' :: [Int] -> Int
produkt' = foldl1 (*)
-- produkt': cannot apply [] as parameter

-- 6.9.2
machStringGross :: String -> String
machStringGross =  map machGroess

-- 6.9.3

-- 6.9.4
