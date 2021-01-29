
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list) # we have passed the has produce in as an argument
#   produce_keys = produce_list.keys # now we are assigning the local variable produce_keys to the keys on the produce has
#   counter = 0 #initiating the counter variable and pointint it at the integer 0
#   selected_fruits = {}  #intiating a variable and pointing it to an empty array

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size # break if counter reaches the size of the produce hash taht is bound to the variable parameter

#     current_key = produce_keys[counter] #assigning this variable to the parameter bound to the hash produce and referencing counter

#     current_value = produce_list[current_key] #variable points to variable parameter and that parameter references the current_key

#     if current_value == 'Fruit' # if the value == fruit
#       selected_fruits[current_key] = current_value # assign selected fruits with the current_key referenced and pointing at current_value
#     end

#     counter += 1 #increment through the produce hash
#   end

#   puts selected_fruits # returning and printing the selected fruits
# end

# select_fruit(produce)

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]