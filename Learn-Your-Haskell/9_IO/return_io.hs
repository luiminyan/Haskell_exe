main = do
    return 123
    return "Haskell"
    putStrLn "Type in something:"
    line <- getLine
    putStrLn line
    
