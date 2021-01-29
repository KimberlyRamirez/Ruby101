=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
--------------------------PROBLEM----------------------------------------

Input: User input == integer > 0
       User input == sum or product of all numbers between 1 and the number entered integer


Output: Whatever the user choose, either sum of all numbers or product of all numbers

---------------------------RULES-----------------------------------------
Explicit: The integer is > 0

Implicit: Ask what the cap number is

--------------------------EXAMPLES---------------------------------------
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

----------------------------ALGO----------------------------------------
- Prompt the user for a number > 0
  - puts ""

- Store their answer
 - intitialize a local variable

- Prompt user to choose whether they want to compute product or sum
  - puts ""

- Do computation on numbers given
  - Create a range from 1 to the number they pick for computation
    - create if/elsif conditions.
      - if they pick product then use reduce on the range
        elsif they pick sum call sum on the range

- I believe I will need to save each answer in it's own variable to call later in string interpolation.
- Print out the computation

=end

puts "Please enter an integer greater than 0:"

retrieve_number = gets.chomp

puts "Enter 's' to compute the sum, or 'p' to compute the product."

retrieve_computation = gets.chomp

sum_computation = (1..retrieve_number.to_i).sum

product_computation = (1..retrieve_number.to_i).reduce(1, :*)

if retrieve_computation.include?("s")
  puts "The sum of the integers beween 1 and #{retrieve_number} is #{sum_computation}"

elsif retrieve_computation.include?("p")
  puts "The product of the integers between 1 and #{retrieve_number} is #{product_computation}"

end


