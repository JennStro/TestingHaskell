test :: IO() 
test = 
        writeFile "out.txt"  $ show (1 == 1) ++ "\n" ++ show (1 == 2) ++ "\n"