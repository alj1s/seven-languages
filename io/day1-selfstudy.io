(1 + 1) println
if(0) println
if("") println
if(nil) println

Test := Object clone
Test slotNames println

Test myMethod := method("this is a method" println)
Test myMethod

Test performMethod := method(methodName, perform(methodName))
Test performMethod("myMethod")
