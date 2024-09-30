-- v16 Introduction into Tuples
timeDecomposition :: Int -> (Int, Int, Int)
timeDecomposition timeInSec = (h, m, s)
    where 
        h = div timeInSec 3600
        m = div (mod timeInSec 3600) 60
        s = mod timeInSec 60

-- v17 Access to Tuples
fstElem :: (a, b) -> a
fstElem = fst

sndElem :: (a, b) -> b
sndElem = snd

-- multi elements tuple
trdElem :: (a, b, c) -> c
trdElem (_, _, z)= z

-- v18 Decomposition of Tuples
-- use (x1, y1) as parameter, instead of p1
distance :: Floating a => (a, a) -> (a, a) -> a
distance (x1, y1) (x2, y2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

distance' p1 p2 = sqrt (sqr dx + sqr dy)
    -- use where to declaire local functions / decomposited parameters
    where 
        (x1, y1) = p1
        (x2, y2) = p2
        {-
            DIFFERENT: (a, b) = v | v = (a, b)
            (a, b) = v, give (a, b) the value of v
            v = (a, b), give v  the value of (a, b)
        -} 
        dx = x2 - x1
        dy = y2 - y1
        sqr n = n * n

-- V19 empty tuples / units
-- empty tuple is a unit: value = unit, type = unit, like void in C

