=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.
--------------------------PROBLEM----------------------------------------

Input: two strings

Output: shorter string + long string + shorter string

---------------------------RULES-----------------------------------------
Explicit: None

Implicit: None

--------------------------EXAMPLES---------------------------------------

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"


----------------------------ALGO----------------------------------------
- Write a method
- Compare string 1 length to string 2 length and then if string1 is shorter thatn string2 concatencate str1 + str2 + str1
- Else
  - Concanenate string2 + string1 + string2

  LS Solution:

  def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
=end

def short_long_short(string1, string2)
  if string1.size < string2.size
      string1 + string2 + string1
  else
    string2 + string1 + string2
    end
  end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"