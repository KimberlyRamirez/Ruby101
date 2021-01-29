
=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

The tests above should print true
--------------------------PROBLEM----------------------------------------

Input: a string

Output: a new string with words in reverse

---------------------------RULES-----------------------------------------
Explicit: None

Implicit: - If the string is empty it outputs an empty string
          - each element is reversed so not each character

--------------------------EXAMPLES---------------------------------------
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
----------------------------ALGO-----------------------------------------
 - Write a method and pass one argument, a string

 - Take the argument and reverse the order of the elements
  - I can't do reverse
  - reference the index of the element
  - reverse the elements and print it
    - take the string, and split it so that it becomes an array and I can reverse each element in the array, rather than each character, then I call join on the rreturn value of string.split.reverse and it will join it back together as a string, with " " passed in.

 - print the reverse string

 Long Version of the code

 def reverse_sentence(string)
 array_string = string.split
  array_string.reverse.join(" ")
end

=end

def reverse_sentence(string)
 string.split.reverse.join(" ")
end


p reverse_sentence('')# == ''
puts reverse_sentence('Hello there World')# == 'World there Hello'
puts reverse_sentence('Reverse these words now')# == 'words these Reverse'