{- Saying :type THING gives you type of that thing (i.e. Bool, Char, etc.)
 - Haskell considers all strings as list of characters ([Char])
 - Haskell supports type synonyms (String is a synonym of Char)
 - "Hello World" :: String is valid
-}

{- Functions in Haskell also have a type!
 - Calling :t on a function gives the following format
 - FUNCTION :: INPUT_TYPE -> OUTPUT_TYPE
 - Ex. not :: Bool -> Bool
 - chr and ord functions convert from character to ASCII and vice versa
 - To load these functions, type in :m Data.Char to load module
 - If functions have more than one argument, arguments are joined with ->
 - Ex. xor p q will have Bool -> Bool -> Bool where the first 2 Bools are for p/q
-}
xor :: Bool -> Bool -> Bool -- Clarify to human as well as compiler
xor p q = (p || q) && not (p && q)
-- Compiler could auto-detect type but easier for debugging to explicitly type it
