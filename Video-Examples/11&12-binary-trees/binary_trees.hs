--       Node
--      /    \
-- Bintree'  Bintree'
data Bintree' = Empty' | Node' Int Bintree' Bintree'

height :: Bintree' -> Int
height tree = 
    case tree of
        Empty' -> 0
        (Node' _ lt rt) -> 1 + max (height lt) (height rt)


{- generic binary tree -}
-- recursive data type with parameter
data Bintree a = Empty | Node a (Bintree a) (Bintree a) deriving (Show)
t1 :: Bintree Int
t1 = Node 3 (Node 2 Empty (Node 1 Empty Empty)) Empty
