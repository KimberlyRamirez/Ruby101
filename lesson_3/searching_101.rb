=begin
Instructions:
  Write a program that solicits 6 numbers from the user, then prints a message that describes whether   or not the 6th number appears amongst the first 5 numbers.

Input: 6 integers from user

Output: String stating whether or not the last num entered appears within the array of the first 5             integers entered

rules:

  Explicit: None

  Implicit: - We have only the first five numbers saved in our array
            - The last number is not saved in the final array
            - Can the 6 numbers be negative?
            - Is 0 allowed in the numbers?
            - number array will be 6 numebrs long
            - our numbers are in an array

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

Algo-Psuedocode
  - ask user for 1st - 6 number inputs
    - puts a string asking for numbers

  - store the numbers given in a collection that can be referenced later
      - capture user input using the gets method, and push it to the local variable array. Assign that to a local variable.

  - output the last number given
    - use string interpolation

  - tell the user whether the last number given was present in our number
    collection.
    - try using an if else condition to show whether number is in the array
=end

array = []

puts "Enter your first number"
first_number = array << gets.chomp.to_i

puts "Enter your second number"
second_number = array << gets.chomp.to_i

puts "Enter your third number"
third_number = array << gets.chomp.to_i

puts "Enter your fourth number"
fourth_number = array << gets.chomp.to_i

puts "Enter your fifth number"
fifth_number = array << gets.chomp.to_i

puts "Enter your last number"
last_number = gets.chomp.to_i

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array}"
else
  puts "The number #{last_number} does not appear in #{array}"
end
