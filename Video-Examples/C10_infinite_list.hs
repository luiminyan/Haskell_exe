-- v49
ones :: [Integer]
ones = repeat 1

-- v50
nats :: [Integer]
nats = iterate (+ 1) 0
-- nates = [0, 1..]


-- v51
ints :: [Integer]
ints = iterate genInteger 0
    where 
        genInteger :: Integer -> Integer 
        genInteger x
            | x > 0 = - x 
            | otherwise = 1 - x


-- v52
-- triangulars :: [Integer]
