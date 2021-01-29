=begin
Palindromic Strings (Part 2)

Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

----Problem-----

Input: string

Output: false or true

Rulse:
  Explicit: - true if palindrome
            - case does not matter
            - ignore all non-alphanumerics

  Implicit: - we are accepting sentences
            - this goes by character, not necesarily words


Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Algo-Pseudocode

- Use already eixisting method
  - def palindrome? already exists and I am going to use that

- Figure out a way to make words all lowercase
 - I think using downcase! may work, but maybe the muation isn't         necessary. I will check to see

- Figure out a way to get rid of everything that isn't a number or       letter
  - I think I will try split since it will turn it into an array. I     don't know if it will work or remove the punctuation. I am not sure, I am going to play around with method in IRB

- After I take out punctuation I need to join letters back together in   a string
  - I think join may work for this since it returns a string

- compare it to the original string
 - I will use the comparison operator ==

- return true or false
  - Will it need to be explicit? Maybe?
  ------------------------------------------------------------------


- Establish a method to verify our string input
-create new local variable to compare to input
  - eliminate case
    - downcase or maybe downcase!

- try to focus on characters
  - do I need to use .chars?
  - chars worked in that it separated my characters
  - my string is now an array

- elminate non-alphanumerics
  -.split - for things like ',' and " ' " (would not work on array)
- del


- once i only have to worry about chars
  -does the reverse work?  compare to string
  - == or !=

=end

# def palindrome?(string)
#  string == string.reverse
# end

def real_palindrome?(string)
  new_string = string.downcase.gsub(/[^a-z0-9]/i, '')
  new_string_reverse = new_string.reverse
  new_string.reverse == new_string

end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# name.gsub(/[^a-z0-9]/i, '')

# Or we can call in our method from palindrome1 and use it like a helper method

# def palindrome?(string)
#   string == string.reverse
# end

# def real_palindrome?(string)
#   new_string = string.downcase.gsub(/[^a-z0-9]/i, '')
#   palindrome?(new_string)
# end

