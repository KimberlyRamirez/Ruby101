=begin
Instructions:
Write a program that prompts the user for two positive integers,
and then prints the results of the following operations on those two
numbers: addition, subtraction, product, quotient, remainder, and power.
Do not worry about validating the input.

---------------PROBLEM-------------------
Input: 2 positive integers

Output: Prints out the rusults of addition, subtraction, product, quotient, remainder, and power
        on the two integers input

Rules:
        Explicit:
                    - You do not need to validate the input
                    - The integers need to be positive

        Implicit: None
                    - none


Examples:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

Algo-Pseudocode:
 - Ask the user to enter the first number
 - Ask the user to enter the second number
 - Save both of the answers from the user so I can access it later
 - Add both numbers, and save that to access it later
 - Print out the result of added number
 - Take both of the numbers and subtract them, and save it
 - Print out the result of the subtracted number
 - Take both of the numbers and multiply them, and save it
 - Print out the result
 - Take both of the numbers and divide them, and save it
 - Print out the result
 - Take both of the numbers and divide them and it will equal
    whatever the remainder of that iss
 - Print out the result
 - Take both of the numbers and exponent them together(idk what it is called)
   The number will equal whatever the first number is to the power of the
   second number
 - Print the result

=end

puts "Enter the first number"
first_number = gets.chomp.to_i

puts "Enter the second number"
second_number = gets.chomp.to_i

addition_equals = first_number + second_number
puts "#{first_number} + #{second_number} = #{addition_equals}"

subtraction_equals = first_number - second_number
puts "#{first_number} - #{second_number} = #{subtraction_equals}"

product_equals = first_number * second_number
puts "#{first_number} * #{second_number} = #{product_equals}"

quotient_equals = first_number / second_number
puts "#{first_number} / #{second_number} = #{quotient_equals}"

remainder_equals = first_number % second_number
puts "#{first_number} % #{second_number} = #{remainder_equals}"

power_equals = first_number ** second_number
puts "#{first_number} ** #{second_number} = #{power_equals}"

