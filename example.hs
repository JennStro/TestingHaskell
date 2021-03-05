import Tester

test :: IO() 
test = do
        shouldBeEqual 1 1 "1 == 1"
        shouldNotBeEqual 1 1 "1 /= 1"
        shouldAlwaysBeTrue (1 == 2) "my test"
        shouldAlwaysBeTrue (3 == 3) "my succeeding test"