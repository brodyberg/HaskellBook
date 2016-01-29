module Hello where

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