#Get My Number Game
#Written by: Diana

#Prompt the player to enter their name. Use their name to print a greeting.
puts "Welcome to 'Get My Number!'"
print "What's your name? "
name = gets.chomp #Chomp used for removing new line character (bc we press the enter key)
puts "Welcome, #{name}!"

#Generate a random number from 1 to 100, and store it as a target number for the player to guess
puts "I've got a number between 1 and 100"
puts "Can you guess it?"
target = rand(100) + 1

#Keep track of how many guesses the player has made. Before each guess, let them know how many guesses (out of 10) they have left.
num_guesses = 0

#Track wheter the player has guessed it correctly
guessed_it = false

until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left." #it converts automatically to string if necessary
    #Prompt the player to make a guess as to what the target number is.
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    #Compare the guess to the target
    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH"
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end

end

#If player ran out of turns
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end

