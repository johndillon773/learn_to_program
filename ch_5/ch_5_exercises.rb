puts "Hello, what is your first name?"
first = gets.chomp
puts "And what is your middle name?"
middle = gets.chomp
puts "Finally, what is your last name?"
last = gets.chomp

puts "Well, " + first + " " + middle + " " + last + ", it is certainly a pleasure to meet you."

puts first + ", what is your favorite number?"
num = gets.chomp
puts num + ", huh? You know, " + (num.to_i + 1).to_s + " is a bigger - and probably better - number than " + num + "..."
puts "Just a thought."