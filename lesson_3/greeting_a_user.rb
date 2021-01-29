=begin
Write a program that will ask for user's name. The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.

Example:
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end

# puts "What is your name?"
# retrieve_name = gets.chomp
# puts "Hey #{retrieve_name}"
# if retrieve_name.include?("!")
#   puts "HELLO #{retrieve_name.upcase}. WHY ARE WE SCREAMING?"
# end

puts "What is your name?"
retrieve_name = gets.chomp
if retrieve_name[-1] == "!"
  retrieve_name.chop
    puts "HELLO #{retrieve_name.upcase}. WHY ARE WE YELLING!"
else puts "Hello #{retrieve_name}"
end



