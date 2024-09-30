data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

size :: Tree a -> Int
size Empty = 0
size (Node _ t1 t2) = 1 + size t1 + size t2


-- 60 height
height :: Tree a -> Int
height Empty = 0
height (Node _ t1 t2) = 1 + max (height t1) (height t2)


-- 61 equal
equal :: Eq a => Tree a -> Tree a -> Bool
equal Empty Empty = True
equal (Node n1 l1 r1) (Node n2 l2 r2) = (n1 == n2) && equal l1 l2 && equal r1 r2 
equal _ _ = False


-- 62 isomorphic
isomorphic :: Eq a => Tree a -> Tree a -> Bool
isomorphic Empty Empty = True
isomorphic (Node n1 l1 r1) (Node n2 l2 r2) = 
  (n1 == n2) && (isomorphic l1 l2 && isomorphic r1 r2 || isomorphic l1 r2 && isomorphic r1 l2)
isomorphic _ _ = False


-- 63 preorder
preOrder :: Tree a -> [a]
preOrder Empty = []
preOrder (Node n lt rt) = [n] ++ preOrder lt ++ preOrder rt  


-- 64 postOrder
postOrder :: Tree a -> [a]
postOrder Empty = []
postOrder (Node n tl tr) = postOrder tl ++ postOrder tr ++ [n]


-- 65 inOrder
inOrder :: Tree a -> [a]
inOrder Empty = []
inOrder (Node n tl tr) = inOrder tl ++ [n] ++ inOrder tr


-- 66 breadthFirst
breadthFirst :: Tree a -> [a]
breadthFirst t = bfs [t]

-- store all subtrees into a list and return the root node list
bfs :: [Tree a] -> [a]
bfs [] = []
bfs (Empty : xs) = bfs xs     -- [Empty] is included
bfs ((Node n tl tr) : xs) = n : bfs (xs ++ [tl, tr])




{- test cases -}
t7 = Node 7 Empty Empty 
{-  
      7 
  Empty Empty
-}
t6 = Node 6 Empty Empty
{-  
    6
  E   E
-}
t5 = Node 5 Empty Empty
{-
      5
  Empty Empty
-}
t4 = Node 4 Empty Empty
{-
    4
  E   E
-}
t3 = Node 3 t6 t7
{-
        3
    6       7
  E   E   E   E
-}
t2 = Node 2 t4 t5
{-  
        2
    4      5
  E   E  E   E
-}
t1 = Node 1 t2 t3
{-  
           1
      2         3
    4   5     6   7
  E E  E E   E E  E E
-}
t1' = Node 1 t3 t2
{-  
           1
      3         2
    6   7     4   5
  E E  E E   E E  E E
-}

t1'' = Node 1 t2 (Node 2 (Node 5 Empty Empty) (Node 4 Empty Empty))
{-  
           1
      3         2
    6   7     5   4
  E E  E E   E E  E E
-}

main :: IO ()
main = do
  print $ isomorphic t1' t1       -- True
  print $ isomorphic t1 t2        -- False
  print $ isomorphic t1' t1''     -- False

  -- preorder
  print $ preOrder t2       -- [2, 4, 5]
  print $ preOrder t1       -- [1, 2, 4, 5, 3, 6, 7]

  -- postOrder
  print $ postOrder t1      -- [4,5,2,6,7,3,1]

  -- inOrder 
  print $ inOrder t1        -- [4,2,5,1,6,3,7]

  -- breadthFirst
  print $ breadthFirst t1

