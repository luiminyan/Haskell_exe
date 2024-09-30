average :: [Int] -> Float
average x = sumElems / len
    where
        -- Int -> Float 
        sumElems = fromIntegral (sum x) :: Float 
        len = fromIntegral (length x) :: Float 
