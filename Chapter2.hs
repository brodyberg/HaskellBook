module Hello where

-- page 65

sayHello :: String -> IO ()
sayHello x = putStrLn ("hello " ++ x ++ "!") 

triple :: Int -> Int
triple x = x * 3

square :: Integer -> Integer
square x = x * x

-- byPi :: Integer -> Integer
-- byPi :: Num -> Num
byPi :: Fractional a => a -> a
byPi x = 3.14 * (x * x)

-- page 69

-- 1. yes
-- 8 + 7 * 9
-- (8 + 7) * 9

-- 2. no
perimeter x y = (x * 2) + (y * 2) 
perimeter' x y = x * 2 + y * 2 

-- 3. yes
-- f x = x / 2 + 9
-- f x = x / (2 + 9)