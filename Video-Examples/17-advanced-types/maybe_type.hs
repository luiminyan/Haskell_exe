-- data Maybe a = Just a | Nothing
-- like Some a | None in Ocaml

posInt :: Int -> Maybe Int
posInt x
    | x <= 0 = Nothing
    | otherwise = Just x


evenInt :: Int -> Maybe Int
evenInt x
    | even x = Just x
    | otherwise = Nothing


noM :: String -> Maybe [Char]
noM [] = Just []
noM (x : xs)
    | (x == 'M') || (x == 'm') = noM xs
    | otherwise = 
        let Just str = noM xs in Just (x : str)


main =  do
    -- test: noM
    print $ noM "Milammmo"      -- Just 'ilao'