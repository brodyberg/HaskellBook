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

foo x =
    let y = x * 2
        z = x ^ 2
    in 2 * y * z 
    
-- page 76
-- 1
area x = 3.14 * (x * x)
-- 2
double x = x * 2
-- 3
x = 7
y = 10
f = x + y

-- pg 86
-- 1
just5       = x
    where x = 5
-- 2
just25      = x * x
    where x = 5
-- 3
just30      = x * y
    where x = 5
          y = 6
-- 4
just6       = x + 3
    where x = 3
          y = 1000
          
-- pg 94
-- 4

z' = 7
x' = y' ^ 2
y' = z' + 8
waxOn       = x * 5
    where x = x' 

waxOn' n = n * 5

triple' x = x * 3

waxOff' x = triple' x

