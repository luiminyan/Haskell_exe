-- data Either a b = Left a | Right b
-- return Left type a or Right type b


--  safeDiv: 
    -- divider = 0 : Left "msg" 
    -- otherwise :   Right float
safeDiv :: Float -> Float -> Either String Float
safeDiv _ 0 = Left "Divider cannot be 0" 
safeDiv n1 n2 =  Right (n1 / n2)


trueOrKill :: Int -> Either String Bool
trueOrKill n 
    | even n = Right True
    | otherwise = Left "Kill!"


p :: String -> IO()
p = putStrLn



-- testing
main = do
    p "Testing: safeDiv"
    -- safeDiv
    print $ safeDiv 1 2         -- Right 0.5
    print $ safeDiv 11.2 0      -- Left "Divider cannot be 0"

    p "-------------------"
    p "Testing: trueOrKill"
    -- trueOrKill
    print $ trueOrKill 12       -- Right True
    print $ trueOrKill 11       -- Left "Kill"