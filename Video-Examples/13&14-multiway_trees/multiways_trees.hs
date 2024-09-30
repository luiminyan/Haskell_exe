-- Multi-ways-trees
-- recursive type: Node a [Tree a]
data Tree a = Node a [Tree a] deriving (Eq, Show)


tree1 = Node 'a' [ 
    Node 'f' [
        Node 'g' []
    ], 
    Node 'c' [], 
    Node 'b' [
        Node 'd' [], 
        Node 'e' []
        ]
    ]



