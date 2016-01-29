module Chapter3 where
    
-- pg 106
    
-- area d = pi * (r * r)
-- r = d / 2

-- pg 109
-- area      d = pi * (r * r)
--     where r = d / 2
--     
--     
-- -- pg 109
-- Prelude> :t (++)
-- (++) :: [a] -> [a] -> [a]
-- Prelude> ++ [1, 2, 3] [4, 5, 6]
-- 
-- <interactive>:18:1: parse error on input `++'
-- Prelude> [1, 2, 3] ++ [4, 5, 6]
-- [1,2,3,4,5,6]
-- Prelude> (++) [1, 2, 3] [4, 5, 6]
-- [1,2,3,4,5,6]
-- Prelude> :t '<3'
-- 
-- <interactive>:1:2: parse error on input `<'
-- Prelude> :t "<3"
-- "<3" :: [Char]
-- Prelude> '<3
-- 
-- <interactive>:23:2: parse error on input `<'
-- Prelude> '<3'
-- 
-- <interactive>:24:2: parse error on input `<'
-- Prelude> "<3" ++ ' Haskell'
-- 
-- <interactive>:25:9:
--     Syntax error on 'Haskell'
--     Perhaps you intended to use TemplateHaskell
--     In the Template Haskell quotation 'Haskell'
-- Prelude> "<3" ++ " Haskell"
-- "<3 Haskell"
-- Prelude> concat ["<3", " Haskell"]
-- "<3 Haskell"
-- Prelude> (++) "<3" " Haskell"]
-- 
-- <interactive>:28:21: parse error on input `]'
-- Prelude> (++) "<3" " Haskell"
-- "<3 Haskell"

-- pg 115

take ((length "awesome!") -1) "awesome!"
take 7 "awesome!"

head (drop 4 n)