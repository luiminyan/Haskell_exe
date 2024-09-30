securedDiv :: Float -> Float -> Maybe Float
securedDiv x y = 
    case (x, y) of
        (_, 0) -> Nothing
        (m, n) -> Just (m / n)


secDiv :: Float -> Float -> Either String Float
secDiv x y = 
    case (x, y) of
        (_, 0) -> Left "Division by zero"
        (m, n) -> Right (m / n)