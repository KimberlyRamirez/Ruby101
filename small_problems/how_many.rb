=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that counts the number of occurrences of each element in a given array.
--------------------------PROBLEM----------------------------------------

Input: array of strings

Output: vechicle type with how many times it's occured in the array

---------------------------RULES-----------------------------------------
Explicit: Count the number of occurences on each vechicle
None

Implicit: -None
          -

--------------------------EXAMPLES---------------------------------------
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
Expected Output

car => 4
truck => 3
SUV => 1
motorcycle => 2

count_occurrences(vehicles)
----------------------------ALGO----------------------------------------
- Create a method and pass a parameter to it
  - def count_occurences(array)

- A way to count over each element and group like elements together.
  -

- Count and output the number of elements in each group
- return each group with their corresponding number

def count_occurrences(array)
   count = 0
   count_car = 0
   count_truck = 0

 array.each do |e|
   if e == 'car'
     count += 1
   end
   count += 1 if e == 'truck'
   count += 1 if e == 'SUV'
   count += 1 if e == 'motorcycle'
 p "#{e} => "
 end

end

count_occurrences(vehicles)

car => 1
car => 2
truck => 3
car => 4
SUV => 5
truck => 6
motorcycle => 7



def count_occurrences(array)
car_array = []
truck_array = []
motorcycle_array = []
suv_array = []

array.each do |vechicle|
  if vechicle == "car"
    car_array << vechicle

  elsif vechicle == "truck"
    truck_array << vechicle

  elsif vechicle == "motorcycle"
    motorcycle_array << vechicle

  elsif vechicle == "SUV"
    suv_array << vechicle

  end
end
  puts "car => #{car_array.size}"
  puts "truck => #{truck_array.size}"
  puts "motorcycle => #{motorcycle_array.size}"
  puts "SUV => #{suv_array.size}"
end
=end

=begin
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

unique_type = vehicles.uniq
p unique_type => ["car", "truck", "SUV", "motorcycle"]


occurances = {}


unique_type.each  do |type|

    occurances[type] = vehicles.count(type)
end


# car  occurances[car] = vehciles.count(car)  # car => 4
# car  occurances[car] = vehciles.count(car)  # car => 4
# truck  occurances[truck] = vehciles.count(truck) # truck => 3
# car  occurances[car] = vehciles.count(car)  # car => 4
# car  occurances[SUV] = vehciles.count(SUV)  # car => 1
# truck  occurances[truck] = vehciles.count(truck) # truck => 3
# motorcycle  occurances[motorcycyle] = vehciles.count(motorcycyle) # truck => 2
# motorcycle  occurances[motorcycyle] = vehciles.count(motorcycyle) # truck => 2
# car  occurances[car] = vehciles.count(car)  # car => 4
# truck  occurances[truck] = vehciles.count(truck) # truck => 3


occurances.each do |k, v|
   puts "#{k} => #{v}"
end
=end


# hash = {'a' => 1, 'b' => 2, 'c' => 3}

# hash['a'] = 1

# hash['a'] = 1

# hash['a'] = 1

# hash['a'] = 1

# p hash

# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end
