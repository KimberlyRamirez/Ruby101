=begin
Instructions:
            - Write a program that will ask a user for an input of a word or multiple words
              and give back the number of characters. Spaces should not be counted as a character.

              -----------PROBLEM----------
Input: A string with a word or multiple words

Output: The number of characters in the string

Rules:

      Implicit: - If there are multiple words have a : followed by the senternce
                - If there are not multiple words there does not need to be a :
                - Whether it is a word or words, it needs to have ""

      Explicit: - Spaces should not be counted as characters

Examples:
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".

Algo-Pseudocode:
                - Ask the user to input a word or multiple words
                  - puts a string

                - Save the user input to access it later
                  - save the user response in a local variable

                - Count the characters of the word(s) and save it to access later
                  - Call the size method on the output of the local variable with
                    the user response in it and save it in it's own local variable

                - Check to see if there is one word or multiple words by seeing
                  if there is a space in the word/words
                  - call the include method on the local variable with the user response
                    assigned to it, and pass the argument " "

                - If there is one word print out the sentence with no :
                  - If the include method returns false then print out the sentence
                    with no colon. User string interpolation.

                - If there is multiple words print out the sentence with the :
                  - If the include method returns true then print out the sentence
                    with a colon. User string interpolation.


=end

puts "Please write a word or multiple words"
user_response = gets.chomp

chars_multiple_words = user_response.split.join.size

puts "There are #{chars_multiple_words} characters in '#{user_response}'."