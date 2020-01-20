#String concatenation
first_name = "Diana"
last_name = "García"
puts first_name + " " + last_name

#String interpolation (only works when you have double quotes (""))
puts "My first name is #{first_name} and my last name is #{last_name}"

#Finding methods (thing.methods)

#Escaping (\ will ignore interpolation and actually print it as it is written)
puts "The new first name is \#{first name}"

#Input
puts  "What is your first name?"
name = gets.chomp #chomp for getting a string
puts "Thank you, you said your first name is #{name}"

puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2

#Assignment 1
puts "Enter you first"