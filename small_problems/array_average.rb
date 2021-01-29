=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.
--------------------------PROBLEM----------------------------------------

Input: an array containing integers

Output: average of all numbers in the array

---------------------------RULES-----------------------------------------
Explicit: - will never be empty
          - will always be positive
          - result should be an integer

Implicit: - to get the sum you will add ever integer together and divide by 2

--------------------------EXAMPLES---------------------------------------
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
----------------------------ALGO----------------------------------------

- go through the integers and add them together

  to add them together we can call the sum method, and then divide by 2. I will need to add () around the first part so that it is executed first

- output the final amount

LS Solution 


def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

how to reduce shorthand: reduce(:+)
=end

def average(array)
  p (array.sum) / array.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40