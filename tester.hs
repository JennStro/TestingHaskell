
module Tester where 

type Message = String 

assertEquals :: (Eq a, Show a) => a -> a -> Message -> IO()
assertEquals exp act message = appendFile "out.txt"  $ show (exp == act) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"

assertNotEquals :: (Eq a, Show a) => a -> a -> Message -> IO()
assertNotEquals exp act message = appendFile "out.txt"  $ show (not(exp == act)) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"
