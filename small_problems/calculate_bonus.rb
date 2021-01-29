=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
--------------------------PROBLEM----------------------------------------

Input: a positive integer, and a boolean

Output: bonus for a given salary

---------------------------RULES-----------------------------------------
Explicit: - If the boolean is try the bonus should be half the salary
          - If the boolean is false the bonus should be 0

Implicit:

--------------------------EXAMPLES---------------------------------------

puts calculate_bonus(2800, true) == 1400
if arg2 is true salary / 2
puts calculate_bonus(1000, false) == 0
if arg2 == false 0 bonus
puts calculate_bonus(50000, true) == 25000
if arg2 == true salary == salary/2


----------------------------ALGO----------------------------------------

- Write a method that has two parameters
- Write an if/elsif condidion
  - If arg2 == true
    - salary / 2
  Elsif arg2 == false
   - salary / 0
  return bonus

  LS Solution:

  def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

=end

def calculate_bonus(salary, boolean)
  if boolean == true
    salary / 2
  elsif boolean == false
    salary * 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000