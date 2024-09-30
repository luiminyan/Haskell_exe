-- v31: higher order functions
-- HOF = takes or returns functions
-- map in prelude
maps' :: (a -> b) -> [a] -> [b]
maps' f [] = []
maps' f (x : xs) = f x : maps' f xs

-- . returns compostition of 2 functions
-- (.) :: (b -> c) -> (a -> b) -> (a -> c)
apli2 :: (a -> a) -> (a -> a)
apli2 f = f . f 

-- v32 anonymous / lambda functions
anonyQuadList :: [Float] -> [Float]
anonyQuadList = map (\x -> x * x)