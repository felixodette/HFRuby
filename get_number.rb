# Get my number game
# Written by Felix

puts "Welcome to 'Get My Nunber!'"

# get player's name, and greet them
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"

# store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# track how many guesses the player has made
num_guesses = 0

# track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1
# compare the guess to the target
# print the appropriate message

  if guess < target
      print "Too low. "
    elsif guess > target
      print "Too high. "
    elsif guess == target
      print "Good job #{name}. You guessed my number in #{num_guesses} guesses!"
      guessed_it = true
  end

end

# if player rans out of turns, tell them what the number is.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}!)"
end