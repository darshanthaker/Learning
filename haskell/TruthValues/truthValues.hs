{- Return a boolean value on whether f(2) == 5
-}
f x = x + 3
-- f 2 == 5 is a 'naked expression' so can't type just as is in here
-- This will give a boolean value of True

{- Notion of types: Bool type
 - Cannot compare two variables of not same type
 - Enter this in ghci and it will give you an error
-}
-- 2 == True

{- Functions with non alphanumeric characters can be written infix
-}
-- 4 + 9 == 13
-- (==) (4 + 9) 13
-- (&&) (6 <= 5) (1 == 1) 
-- (||) (18 == 17) (9 >= 11)

{- Functions defined
-}
-- not (5 * 2 == 10)
-- /= is not equal to
-- x /= y

{- Guards are like math piecewise functions
 - Define the absolute value function appropiately
 - Need to indent second and third values in order for correct parsing
 - Each pipe is followed by conditional
 - otherwise just evaluates to True, it is a catch-all guard
 - If no predicate is true for some input, will get runtime error
 - We wrote 0 - x instead of -x because -x is a syntactical abbrevation in most cases
-}
absolute x
    | x < 0     = 0 - x -- If x < 0, then return -x
    | otherwise = x -- Otherwise, return x

numOfRealSolutions a b c
    | disc > 0  = 2 -- If b^2 - 4ac > 0, then return 2 real solutions
    | disc == 0 = 1
    | otherwise = 0
        where
        disc = b^2 - 4*a*c
