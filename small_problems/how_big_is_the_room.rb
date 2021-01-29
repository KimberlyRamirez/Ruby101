=begin

NOTES: THIS IS A GOOD PEDAC PROBLEM TO USE
It is good practice to use a constant variable to store the
conversion factor between square meters and square feet. It is good
practice anytime you have a number whose meaning is not immediately
obvious upon seeing it.

-------------Problem-------------

Input: length and width of a room in meters

Output: area of the room in square meters and square feet

Rules:
    Implicit:- Will we expect a float number as the input?
             - You will spell out square emeters and square feet


    Explicit: - You do not need to validate the input
              - You must display both the square meters and square feet of the room
              - Include a float number


Examples:

1 sq meter == 10.7639 square feet

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Algo-pseudocode

- Create a method and pass one parameter to it
- Ask uses for length and width of their room
    - Call the gets method
- Save length and width answer
    - Initialize a new variable and bind the response from the user to the variable
- Multiply the length times width to get the square meters
    - Use the * operator to multiply these two numbers
    - Potentially intiate a new variable to store this information
- Multiply the square meters by 10.7639 to get the square feet
    - Use the * operator to multiply the numbers
    - Potentially intiate a new varibale to store this information
- Print out a statement saying what the square meters and square feet are
    - User string interpolation to call both of varibales outputs in the string


After Thoughts: An implicit rule I could have used would have been to ask the interviewer
if I needed to round the answer and if so, to how many decimals.

=end

puts "What is the length of your room in meters?"
length = gets.chomp.to_f

puts "What is the width of your room in meters?"
width = gets.chomp.to_f

square_meters = (length * width).round(2)

square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)"
