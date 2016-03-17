{- Order of statements doesn't matter like in imperative programming 
 - Think of as mathematical statements
 - Note: variables MUST begin with lowercase letter
-}
y = x + 2
x = 2

{- Uncomment this code and it will give you error
 - "Multiple declarations of r"
 - Haskell variables only declared ONCE
-}
-- r = 1
-- r = 2

{- Function AreaCircle(r) = pi * r^2
 - r is input and output is pi*r^2
 - areaCircle 5 * 3 does A(5)*3
-}
areaCircle r = pi * r^2

{- More functions practice
 - Notice that double double x would cause errors since that would
 - apply double to two parameters (double and x)
-}
double x    = 2 * x
quadruple x = double (double x)
half x      = x / 2
test x      = (half x) - 12

{- Multiple parameters to a function
 - Order maintained for subtraction (sub 10 5 vs. sub 5 10)
-}
areaRect l w = l * w
sub x y      = x - y
vol l w h    = l * w * h

{- Reusing functions (areaSquare is just areaRect with l = w)
-}
areaSquare s     = areaRect s s
areaCylinder r h = (areaCircle r) * h

{- Define scope of local variables used in one formula
 - Note we use a b c twice but are in different scopes
 - Also remember order of function declaration not important
-}
areaTriangleTrig a b c = c * height / 2 -- Use trig given 3 triangle sides
    where 
    cosa   = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)
    sina   = sqrt (1 - cosa ^ 2)
    height = b * sina

areaTriangleHeron a b c = result -- Use Heron's formula
    where
    result = sqrt (s * (s - a) * (s - b) * (s - c))
    s      = (a + b + c) / 2

{- More on scope of variables 
-}
r      = 2
area r = pi * r ^ 2
-- r here is 2 because A(r) has r declared in function scope
