module Geometry.Cuboid ( 
    volume
    , area
) where


volume :: Float -> Float -> Float -> Float
volume a b c = a * b * c 


area :: Float -> Float -> Float -> Float
area a b c = 2 * (rectangle_area a b + rectangle_area a c + rectangle_area b c) 


rectangle_area :: Float -> Float -> Float
rectangle_area a b = a * b