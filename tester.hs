
module Tester where 

type Message = String 

shouldBeEqual :: (Eq a, Show a) => a -> a -> Message -> IO()
theseShouldBeEqual exp act message = appendFile "out.txt"  $ show (exp == act) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"

shouldNotBeEqual :: (Eq a, Show a) => a -> a -> Message -> IO()
theseShouldNotBeEqual exp act message = appendFile "out.txt"  $ show (not(exp == act)) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"
