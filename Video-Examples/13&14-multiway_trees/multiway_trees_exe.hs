-- Define recursive data type
data Tree a = Node a [Tree a] deriving (Show)


-- 68 numnodes
numnodes :: Tree a -> Int
numnodes (Node _ children) = 1 + sum (map numnodes children)


-- 69 stringToTree 
-- TODO
-- stringToTree :: String -> Tree Char


-- 70.1 nodeCount
nodeCount :: Tree a -> Int
nodeCount (Node _ ts) = 1 + sum (map nodeCount ts)


-- 70 pathLength 
-- TODO


-- 71 bottomUp
bottomUp :: Tree a -> [a]
-- concatMap: append all list elems into one list
bottomUp (Node n xs) = concatMap bottomUp xs ++ [n]


func = map (\x -> 2 * x + 1)

list01 = [1, 1, 1, 1, 1]



-- Testing
t1 = Node 'a' [Node 'f' [Node 'g' []], Node 'c' [], Node 'b' [Node 'd' [], Node 'e' []]]
t2 = Node 'a' [Node 'b' [Node 'c' []]]

main = do
    -- maps
    print $ func list01

    -- nodeCount
    print $ nodeCount t1    -- 7
    print $ nodeCount t2    -- 3

    -- bottomUp
    print $ bottomUp t1     -- "gfcdeba"
    print $ bottomUp t2     -- "cba"