#Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
# write a method that takes one argument
# The argument passed needs to be a positive integer
#the method returns a list of the digits in the number

=begin

Problems:

input: a postive number
output : an array whose elements represent each digit in the argument
rules:
-that it has a postive integer.
-the digits go in order from left to right
-returns as little as one digit

Examples:
digit_list(12345) == [1, 2, 3, 4, 5]
12345
add 1
add 2...
puts digit_list(7) == [7]
only one number

puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

Data structures - array?


Algo - psuedocode

1) take the number and change it to a string
    -call to_s on the number
2) convert the string into an array of characters
    -call chars method on number.to_s
3) transform the string elements into integers
    - assign number to_s and chars to new variable
    - iterated useing map method and invoked to_i method on block
4) return our array


Code

=end

# map {|item| block} → new_ary
# map! {|item| block } → ary

# a = [ "a", "b", "c", "d" ]

# a.map {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
# #map is being called not on a but on the object being referenced by a
# #map is passed a block
# #the block variable x will reference the current element in the array on each iteration

# new_array = a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
# a                                 #=> ["a", "b", "c", "d"]


# def digit_list(int)
#   int.digits.reverse
# end


def digit_list(int)
  int.divmod
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
# puts digit_list(-1) == []