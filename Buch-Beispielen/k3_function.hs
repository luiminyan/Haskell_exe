-- 3.1 Funktionen definieren
mystic a b = div a 2 + (3 * a - b)


-- definieren 2 Funktionen mit gleichem Signatur
inc, dec :: Int -> Int
inc n  = n + 1
dec n  = n - 1


-- 3.1.3 wildcards
zweiundvierzig _ = 42


{- 3.1.5 pattern matching 
    use wildcard _
-}
xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _ = False


-- 3.1.6 pattern matching with case
not b = case b of
    True -> False
    False -> True


-- 3.1.7 local definition with where
-- increment is local definition
decrement a = increment a - 2
    where
        increment :: Int -> Int
        increment a = a + 1


-- 3.1.8 local definition with let-in
formel a b = let h = (2 * a - 3 * b)
    in decrement h


-- 3.1.9 with Guards
xor' x y 
    | x && Main.not y = True
    | Main.not x && y = True
    | otherwise = False

-- 3.1.10
intBool :: Int -> Bool -> Int
intBool a b = if b then a else 0


-- 3.2.4 eigene Operatoren definieren
-- #: xor
(#) :: Bool -> Bool -> Bool
(#) x y = (x || y) && Main.not (x && y)

-- Operator Assoziativität definieren
-- .+., assoz. Niveau = 8
infixr 8 .+.
(.+.) a b = a + b
-- .*. = 7
infixr 7 .*.
(.*.) a b = a * b

-- 3.3 lambda function - nameless function
quadrat = \x -> x * x

-- Hausaufgaben 3
-- A1
xor'' :: Bool -> Bool -> Bool
xor'' True y = Main.not y
xor'' False y = y

-- A2:
greater :: Int -> Int -> Int
greater a b = if a >= b then a else b

-- A3: alle functionen im Kapitel

-- A4: 
opNAND :: Int -> Int -> Int
opNAND a b
    | (a == 1) && (b == 1) = 0
    | otherwise = 1