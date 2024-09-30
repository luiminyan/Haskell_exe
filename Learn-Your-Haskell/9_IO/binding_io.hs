import Data.Char (toUpper)
main = do
    putStrLn "First name:"
    firstname <- getLine
    putStrLn "Last name:"
    lastname <- getLine
    let upperLastName = map toUpper lastname
    putStrLn $ "Hey, " ++ firstname ++ " " ++ upperLastName ++ ", welcome!"