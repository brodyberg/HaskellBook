module Chapter4 where 
import Data.Char

-- let awesome = ["Papuchon", "curry", "Haskell"]
-- let awesome = ["Papuchon", "curry", "Haskell"]
-- let alsoAwesome = ["Quake", "The Simons"]

-- 1:
-- length :: [a] -> Integer
-- :t length 
-- length :: Foldable t => t a -> Int

-- 3:

-- 6 / (fromIntegral (length [1, 2, 3]))

-- :t fromIntegral
-- fromIntegral :: (Integral a, Num b) => a -> b
-- implies Int is a tuple? 
-- but this fails: 
-- Prelude> let (x,y) = 3
-- 
-- <interactive>:127:5:
--     Non type-variable argument in the constraint: Num (t, t)
--     (Use FlexibleContexts to permit this)
--     When checking that `x' has the inferred type
--       x :: forall t t1. Num (t, t1) => t

-- also, we can use div, which does integer division: 
-- div 6 (length [1, 2, 3])

-- 8:  Write a function that tells you whether a given 
-- String is a palindrome

-- reverse [a] -> [a]
-- reverse "blah" 
-- "halb" 
-- 
isPalindrome :: (Eq a) => [a] -> Bool

strings = 
    [
        "Dont nod",
        "Dogma I am God",
        "Never odd or even",
        "Too bad – I hid a boot",
        "Rats live on no evil star",
        "No trace; not one carton",
        "Was it Eliot's toilet I saw?",
        "Murder for a jar of red rum",
        "May a moody baby doom a yam?",
        "Go hang a salami; I'm a lasagna hog!",
        "Satan, oscillate my metallic sonatas!",
        "A Toyota! Race fast... safe car: a Toyota",
        "Straw? No, too stupid a fad; I put soot on warts"]

-- filter (\item -> item /= ' ') "foo bar"
-- "foobar"

-- fails
-- filter (\char -> char >= 'a' || char <= 'Z') "Straw? No, too stupid a fad; I put soot on warts"
-- 
-- :t isAlpha
-- works like a champ: 
-- filter (\char -> isAlpha char) "Straw? No, too stupid a fad; I put soot on warts"
-- "StrawNotoostupidafadIputsootonwarts"

isPalindrome original = firstHalfOriginal == firstHalfReversed
    where 
--    let original = "Satan, oscillate my metallic sonatas!"
        originalAllAlpha = map (toLower) (filter (isAlpha) original)
        reversed = reverse originalAllAlpha
        halfString str = take (div (length str) 2) str
        firstHalfOriginal = halfString originalAllAlpha
        firstHalfReversed = halfString reversed

--    firstHalfOriginal == firstHalfReversed



-- get reversed item
-- slice out half of given
-- slice out half of reversed
-- compare ==
    
-- we can slice via take?
-- slice :: Int -> String -> String
-- slice count str =
--     take (div (length str) 

--let halfString str = take (div (length str) 2) str

-- let ex = "asdfasdfsadfpoupoiupupou"
-- take (div (length ex) 2) ex