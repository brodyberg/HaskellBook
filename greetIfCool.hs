module GreetIfCool1 where

greetIfCool1 :: String -> IO ()
greetIfCool1 coolness =
    if cool
        then putStrLn "cool detected."
    else
        putStrLn "cool not detected."
    where cool = coolness == "frosty"

greetIfCool2 :: String -> IO ()
greetIfCool2 coolness =
    if cool coolness
        then putStrLn "cool detected."
    else
        putStrLn "cool not detected."
    where cool v = v == "frosty"
