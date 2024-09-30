-- A2
andDef :: Bool-> Bool -> Bool
andDef x y = x && y

orDef :: Bool -> Bool -> Bool
orDef x y = x || y

notDef :: Bool -> Bool
notDef x = if x == True then False else True

xorDef :: Bool -> Bool -> Bool
xorDef x y = x /= y

-- ohne && ||
orDef' :: Bool -> Bool -> Bool
orDef' x y = if x == y then 
                    if x == False then False 
                    else True
            else True

-- A3)

