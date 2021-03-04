
module Tester where 

type Expected = String 
type Actual = String 
type Result = Bool 

assertEquals :: Expected -> Actual -> Result
assertEquals expected actual = expected == actual

assertTrue :: Bool -> Result 
assertTrue bool = bool 

