=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes one argument, a positive integer, and returns the sum of its digits.
--------------------------PROBLEM----------------------------------------

Input: a positive integer

Output: sum of it's digits

---------------------------RULES-----------------------------------------
Explicit: none

Implicit: none

--------------------------EXAMPLES---------------------------------------
- Create a method and pass one argumenet
- Try calling sum on them, but I can't because I need to remove the _ from each of the numbers on the last test case, and then I need to seperate each number and then call sum on it.

- I don't have to remove the _ I will need to convert this number to a string, then call chars on it and then iterate through it and put each number.to_i shoveled into an array, and finally return the return value of sum onvoked on the local variable array.

LS Solutions:

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end


def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

23.to_s.chars # => ["2", "3"]

def sum(number)
  number.to_s.chars.reduce(:+)
end

["2", "3"].map(&:to_i) # => [2, 3]

["2", "3"].map { |element| element.to_i } # => [2, 3]

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5




----------------------------ALGO----------------------------------------
=end

def sum(integer)
  array = []
  new_int = integer.to_s.chars
  new_int.map do |number|
    array << number.to_i
end
  array.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45