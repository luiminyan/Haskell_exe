main = do
    -- read input line
    new_input <- getLine
    -- empty line: stop <empty I/O action>
    if null new_input
        then return ()
    else do
        -- print: reverse each word in line 
        putStrLn $ reverseLine new_input
        -- recursion
        main

reverseLine :: String -> String
reverseLine = unwords . map reverse . words
-- words: text -> ["string"]
-- map reverse: reverse each word
-- unwords: ["gnirts"] -> text