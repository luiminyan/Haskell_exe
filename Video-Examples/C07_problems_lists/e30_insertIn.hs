insertIn :: a -> [a] -> Int -> [a]
insertIn elem list 1 = elem : list
insertIn elem (x : xs) n = x : insertIn elem xs (n - 1)
