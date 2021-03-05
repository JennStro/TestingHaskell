import Tester

test :: IO() 
test = do
        shouldBeEqual 1 1 "1 == 1"
        shouldNotBeEqual 1 1 "1 /= 1"