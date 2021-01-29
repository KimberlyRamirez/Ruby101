=begin
-------Program------
input: random number between 20 - 200 representing "Teddy's" age
output:prints Teddy's age
implit rules:
explicit rules: - the number should be between 20 - 200
                - the number should be random
examples: "Teddiy is 69 years old!"
algo/pseudocode:
          - write a method
          - pass a parameter to the method
          - generate a number between 20 - 200
            - try rand method to generate number
          - take the number and make it Teddy's age
            - initiate a variable with Teddy's random age in it
          - print out "Teddy is X old" with the generated number in the string
            - use string interpolation to add the perviously assigned variable with the random
              number to the string you need to output
          - return method the string
            invoke the method and pass the rand method to it
=end

def teddy(age)
  rand_age = age
  puts "Teddy is #{rand_age} years old!"
end

teddy(rand(2..200))

