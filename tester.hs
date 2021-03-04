
module Tester where 

type Message = String 

assertEquals :: (Eq a, Show a) => a -> a -> Message -> IO()
assertEquals exp act message = writeFile "out.txt"  $ show (exp == act) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"


