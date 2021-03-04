
module Tester where 

type Message = String 

assertEquals :: (Eq a, Eq a) => a -> a -> Message -> IO()
assertEquals exp act message = writeFile "out.txt"  $ show (exp == act) ++ " " ++ message ++ "\n"


