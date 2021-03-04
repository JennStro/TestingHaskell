import Tester

test :: IO() 
test = 
        assertEquals 1 1 "testmessage"
       -- writeFile "out.txt"  $ show (1 == 1) ++ " " ++ "1 == 1 should pass" ++ "\n" ++ show (1 == 2) ++ " " ++ "1 == 2 should fail" ++ "\n"