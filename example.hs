import Tester

test :: IO() 
test = do
        assertEquals 1 1 "testmessage"
        assertNotEquals 1 1 "this should fail!"