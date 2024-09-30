module Shapes (
    -- type exporting in module
    Point (..)
    , Shape' (..)
    , surface'
    , nudge
    , baseCircle
    , baseRectangle
) where



-- 08.01 Algebraic data type intro
{- 
    `Shape` : Data Type
    `Circle` and `Rectangle` are constrcutors for type `Shape`
    `Circle` x y r
-}

-- Circle :: Float -> Float -> Float -> Shape
-- Rectangle :: Float -> Float -> Float -> Float -> Shape
data Shape
    = Circle Float Float Float
    | Rectangle Float Float Float Float
    deriving Show

surface :: Shape -> Float
surface arg = case arg of
    (Circle _ _ r) -> pi * r ^ 2
    (Rectangle x1 y1 x2 y2) -> abs (x2 - x1) * abs (y2 - y1)
-- surface (Circle 1 2 3) 
-- surface $ Rectangle 1 2 3 4

data Point = Point Float Float deriving Show
data Shape' =
    Circle' Point Float | Rectangle' Point Point
    deriving (Show)

surface' :: Shape' -> Float
surface' (Circle' _ r) = pi * r ^ 2
surface' (Rectangle' (Point x1 y1) (Point x2 y2)) = abs (x2 - x1) * abs (y2 - y1)


-- Get circle from radius
baseCircle :: Float -> Shape'
baseCircle = Circle' (Point 0 0)


-- Get rectangle from width and height
baseRectangle :: Float -> Float -> Shape'
baseRectangle w h = Rectangle' (Point 0 0) (Point w h)


-- nudge, move the shape
nudge :: Shape' -> Float -> Float -> Shape'
nudge s x y = case s of
    Circle' (Point x0 y0) r -> Circle' (Point (x0 + x) (y0 + y)) r
    Rectangle' (Point x1 y1) (Point x2 y2) -> Rectangle' (Point (x1 + x) (y1 + y)) (Point (x2 + x) (y2 + y))



-- 08.02 Record Syntax
-- data Person = Person String String Int Float String String deriving (Show)
-- make it readable
data Person = Person {
    firstname :: String
    , lastname :: String
    , age :: Int
    , height :: Float
    , phoneNumber :: String
    -- flavor :: Person -> String
    , flavor :: String
} deriving (Show)


data Car = Car {
    company :: String
    , model :: String
    , year :: Int
} deriving (Show)


-- 08.03 Type Parameter
tellCar (Car {company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y


