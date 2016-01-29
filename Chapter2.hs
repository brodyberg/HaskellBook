module Hello

sayHello :: String -> IO ()
sayHello x = putStrLn ("hello " ++ x ++ "!") 

triple :: Int -> Int
triple x = x * 3

square :: Integer -> Integer
square x = x * x

byPi :: Integer -> Fractional Integer
byPi x = 3.14 * (square x)