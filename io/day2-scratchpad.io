// basic loop
// loop("getting dizzy" println)

// basic while loop
i := 1
while(i <= 11, i println; i = i + 1); "This one goes to 11" println

// basic for lopp
for(i, 1, 11, i println); "This one goes to 11" println

// for loop with increment of 2
for(i, 1, 11, 2, i println); "This one goes to 11" println

// if constructs.
if(true, "true" println, "false" println)

if(false) then("It is true" println) else("It is false" println)

// operators
OperatorTable println

OperatorTable addOperator("xor", 11)
OperatorTable println

// define xor on true
true xor := method(bool, if(bool, false, true))

// define xor on false
false xor := method(bool, if(bool, true, false))

// truth table for xor
true xor true
true xor false
false xor true
false xor false

// messages
postOffice := Object clone
postOffice packageSender := method(call sender)

mailer := Object clone
mailer deliver := method(postOffice packageSender)

mailer deliver

postOffice messageTarget := method(call target)
postOffice messageTarget

postOffice messgeArgs := method(call message arguments)
postOffice messageName := method(call message name)

postOffice messageArgs("one", 2, :three)
