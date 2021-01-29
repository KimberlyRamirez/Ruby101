
# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

# 2332


# 110011
# 54322345

# You'll be given 2 numbers as arguments: (num, s). Write a method which returns an array of s number of numerical palindromes that come after num. If num is a palindrome itself, it should be included in the count.

# Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.

# Single digit numbers will NOT be considered numerical palindromes.

=begin
# P (understand the Problem) #

Palindrome- a character that reads the same backwards and forward
-takes 2 arguments
-return array is a number that's a palindrome
-single digit numbers are not palindromes
-count up from num until we get s number of palindrome numbers check
-


# E (Examples - Test cases) #
name method 'panlindrome'
first argument: starting number
second argument: lenght of return array


palindrome(6,4) == [11,22,33,44] # starting number is included, because it's panlindrome
=>11
=>22..
palindrome(75,1) == [77]
palindrome(101,2) == [101,111] # starting number is included, because it's a panlindrome
=>101
=>111
palindrome(20,0) == [] # second arugment is zero meaning return array length is zero, thus return empty array

palindrome(0,4) == [11,22,33,44]

palindrome("ACCDDCCA",3) == "Not valid" # first argument is not an integer, return "not valid"
palindrome(773,"1551") == "Not valid" # second argument is not an integer, return "not valid"
palindrome(-4505,15) == "Not valid" # first argument is a negative number, return "not valid"
palindrome(4505,-15) == "Not valid" # second argument is negative number, return "not valid"

-a guard clause
# Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.


# D (Data structures) #
# Input: two integers
# Output: array of integers


# A (Algorithm + Pseudocode) #
# General Approach:

check the input for guard clause
-- return if wrong arg


initialize result array


Iterate starting from first arg until the condition of second arg is met


Check if the current number is a palindrome
  If yes, add to result array
  Check if the result array.size is equal to second arg, break out of iteration


Return the array


# Pseudocode for chosen approach:
method parameters:
num: starting_number
s: result_size


return "Not valid" if either argument is less than 0 or either argument is a string (._to_s.to_i)
intialize our result array, name it result_array

iterate starting from starting_number until the condition of result_size is met
loop do
- check if starting_number is a palindrome
- starting_number = starting_number + 1

break if size of results_array == result_size

Helper method: palindrome?
True or false,
if true, append to restult_array



return result_array

# Code :) #
# Verbalize output before running
=end


def panindrome(starting_number, result_size)
    loop do
    end
end

def check_palindrome(starting_number, result_size)
    if starting_number

palindrome(6,4) == [11,22,33,44]
palindrome(75,1) == [77]
palindrome(101,2) == [101,111]
palindrome(20,0) == []
palindrome(0,4) == [11,22,33,44]

palindrome("ACCDDCCA",3) == "Not valid"
palindrome(773,"1551") == "Not valid"
palindrome(-4505,15) == "Not valid"
palindrome(4505,-15) == "Not valid"