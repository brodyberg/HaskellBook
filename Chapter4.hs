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

-- 8: 

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

isPalindrome :: [Char] -> Bool
isPalindrome original = firstHalfOriginal == firstHalfReversed
    where 
--    let original = "Satan, oscillate my metallic sonatas!"
        originalAllAlpha = map (toLower) (filter (isAlpha) original)
        reversed = reverse originalAllAlpha
        halfString str = take (div (length str) 2) str
        firstHalfOriginal = halfString originalAllAlpha
        firstHalfReversed = halfString reversed

isPalindrome "Go hang a salami; I'm a lasagna hog!"
-- we don't know yet how to copy/paste multi-line expressions
-- into the REPL so we can't do a test using foldl which
-- would prove our code vs. strings above. 

--9 use if/else to return absolute value of a number
absolute :: Num => a : a -> a
absolute x = if x > 0 then x else -x
    
absolute 9
absolute (-9)

-- 10 fill in definition for: 
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f = 
    