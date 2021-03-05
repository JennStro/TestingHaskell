
module Tester where 

type Message = String 

shouldBeEqual :: (Eq a, Show a) => a -> a -> Message -> IO()
shouldBeEqual exp act message = writeToOutFile "out.txt" "shouldBeEqual" (exp == act) message exp act --appendFile "out.txt"  $ show (exp == act) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"

shouldNotBeEqual :: (Eq a, Show a) => a -> a -> Message -> IO()
shouldNotBeEqual exp act message = writeToOutFile "out.txt" "shouldNotBeEqual" (not(exp == act)) message exp act --appendFile "out.txt"  $ show (not(exp == act)) ++ " " ++ "[" ++ message ++ "]" ++ " (Expected: " ++ show exp ++ " Actual: " ++ show act ++ ") " ++ "\n"

shouldAlwaysBeTrue :: Bool -> Message -> IO()
shouldAlwaysBeTrue condition message = writeToOutFile "out.txt" "shouldAlwaysBeTrue" (condition == True) message True condition 

writeToOutFile :: (Eq a, Show a) => String -> String -> Bool -> String -> a -> a -> IO()
writeToOutFile filename testMethodname testPassed message expected actual = appendFile filename $ show testPassed ++ " " ++ "[ " ++ message ++ " ]" ++ " (Expected: " ++ show expected ++ " Actual: " ++ show actual ++ " in " ++ testMethodname ++ ") " ++ "\n"