-- define the header of the function
factorial :: Integer -> Integer
-- define the function
factorial 0 = 1 -- base case
factorial n = n * factorial (n - 1)

-- new function
double x = 2 * x
