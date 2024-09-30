{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use newtype instead of data" #-}

data Graph' a = Edge [(a, a)] deriving (Show, Eq)

g1 = Edge [(1, 2), (1, 5), (2, 3), (2, 5), (3, 4), (4, 5), (4, 6)]
g2 = Edge [('g', 'h'), ('k', 'f'), ('f', 'b'), ('f', 'c'), ('b', 'c')]


--  Graph (E, V)
data Graph a = Graph [a] [(a, a)]


-- Adjacency List
data Graph'' a = Adj [(a, [a])] deriving (Show, Eq)
