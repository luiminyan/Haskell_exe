-- 7.1 type synomyme with type
-- type to be defined with capitalized letter
-- not safe
{-
    type Name = String
    type Adresse = String
    type Adressebuch = [(Name, Adresse)]
-}

-- 7.1.2 newtype
newtype Name = N String
newtype Adresse = A String
type AddressBuch = [(Name, Adresse)] 
-- video trick: parameter decomposition
eintrag (N name) ((N n, A a) : r)
    | name == n = a
    | otherwise = eintrag (N name) r
eintrag _ [] = error "nicht erhalten"


-- 7.2
data Einfach = Wert deriving Show

f :: Einfach -> String
f Wert = "Das ist ein Wert!"


data Wochenende = Sonntag | Samstag deriving (Show, Eq, Ord)

instance Ord Wochenende where
    compare Sonntag Samstag = GT
    compare Samstag Sonntag = LT
    compare _ _ = EQ


