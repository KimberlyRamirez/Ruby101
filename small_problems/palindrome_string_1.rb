=begin
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

P => Problem
E => Examples/Test Cases/Edge Cases
D => Data Structures
A => Algo
C => Code

Problem solving tool

---------------Problem------------------
Input: string

Output: true or false, based on if the argument passed is a palindrome

Rules:
      Explicit: - it has to return true or false
                - case matters
                - punctuation matters
                - spaces matters

      Implicit: - It takes integers as arguments
                - The integer is a string so it should be fine


Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true


Algo-Pseudocode:
- Create a function
  - Create def palindrome? and pass sting argument
- Evaluate the inputed string to see if it is a palindrome
  - See if string equals the return value of calling the reverse method       on the local variable string
- Account for our case, punctuation, and spaces
  - I think that we don't have to account for caps spaces or punctuation
    because it will automatically return false when it compares two           strings with those objects in them.
- Return true or false
  - Do we want to make it an explicit true or false return? Probably not.
=end

# def palindrome?(string)
#   name = string
#   name_reverse = name.reverse
#   name == name_reverse
# end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
`
# Launch School Example
# def palindrome?(string)
#   string == string.reverse
# end