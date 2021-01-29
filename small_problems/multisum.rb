=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.
--------------------------PROBLEM----------------------------------------

Input: number

Output: the sum of the multiples of 3 and 5 of the argument number

---------------------------RULES-----------------------------------------
Explicit: Is that it has to be multiples of 3 and 45

Implicit: if there is the same number of multiples for both three and fife, it only counts one.

--------------------------EXAMPLES---------------------------------------
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
----------------------------ALGO----------------------------------------
Create a method and pass one parameter to it
we have an integer that comes in
we need to go over each integer starting from 0 to the final integer number and we need to put any numbers that are multiples of 3 or 5 into their own array, and then we need to add them altogether
 - intitialize a new variable and assign and empty array to it.
- call the map method on a range that starts from 0 .. num (parameter)
- if condition with mod operator
- if condition is met shover the number into the array
- return array and invoke sum on it
=end


def multisum(num)
  array = []

  (0..num).map do |number|
    if number % 3 == 0 || number % 5 == 0
      array << number
    end
  end
   array.sum
  end

 puts multisum(3) == 3
 puts multisum(5) == 8
 puts multisum(10) == 33
 puts multisum(1000) == 234168
