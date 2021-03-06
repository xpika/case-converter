module Main where

import Text.CaseConversion
import Test.HUnit

test1 = TestCase $ assertEqual 
  "test1" ["hello","World"] ( fromCamelCase "helloWorld" ) 
  
test2 = TestCase $ assertEqual 
  "test2" "helloWorld" ( toCamelCase ["hello","World"] ) 
  
test3 = TestCase $ assertEqual 
  "test3" "helloWorld" ( convertCase Snake Camel "hello_world") 

main = runTestText (putTextToShowS) (TestList [test1,test2,test3])
--main = runTestTT $ TestList [test1,test2,test3]



