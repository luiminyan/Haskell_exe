module RPS (
    RPS(..)
) where

data RPS = Rock | Paper | Scissor deriving (Show, Eq)

instance Ord RPS where
    compare Rock Scissor = GT
    compare Scissor Paper = GT
    compare Paper Rock = GT
    compare x y 
        | x == y = EQ
        | otherwise = LT


strRPS :: String -> RPS
strRPS x =
    case x of
        "scissors" -> Scissor
        "rock"     -> Rock
        "paper"    -> Paper


rps :: String -> String -> String
rps p1 p2 
    | str_p1 > str_p2 = "Player 1 won!"
    | str_p1 == str_p2 = "Draw!"
    | otherwise = "Player 2 won!"
    where (str_p1, str_p2) = (strRPS p1, strRPS p2)
