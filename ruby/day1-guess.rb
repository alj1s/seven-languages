number = rand(10)

print("Enter a number between 0 and 9:\n")

guess = gets().to_i()

while(guess != number)

  if(guess < number)
    print("Too low\nGuess again\n")
  end
  if(guess > number)
    print("Too high\nGuess again\n")
  end

  guess = gets().to_i()

end

print("You got it\n")
