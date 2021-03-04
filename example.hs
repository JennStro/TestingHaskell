import Tester

test :: IO() 
test = do
        assertEquals 1 1 "1 == 1"
        assertNotEquals 1 1 "1 /= 1"