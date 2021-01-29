=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

Problem:
  Input: integer
  Output: boolean
Explicit Rules: - Divisable by 4 unless it is divisable by 100
                - if year is divisable by 100, not leap year unless it is divisable by 400
                - integer is greater than 0
Implicit Rules  - none
Examples:

  leap_year?(2016) == true

    is evenly divisible by 4 (2016 % 4 == 0)
    is not evenly divisble 100 (2016 % 100 == 16)
    is not evenly divisble by 400 (2016 % 400 == 16)

  leap_year?(2015) == false

    is not evenly divisble by 4( 2015 % 4 == 3)
    is not evenly divisble by 100 (2015%100 == 15)
    is not evenly divisble by 400 (2015%400 == 15)

  leap_year?(2100) == false

    is evenly divisble by 4 (2100 % 4 == 0
    **evenly divisble by 100**(2100 % 100 == 0)
         divisible by 4 and 100 NOT A LEAP YEAR

  leap_year?(2400) == true

    is evenly divisible by 4 (2400 % 4 == 0)
    is evenly divisble by 100 (2400 % 100 == 0)
    is evenly divisible by 400 (2400 %400 == 0)

Data Structure
Algo-Pseudocode

  - if year is evenly divisible by 4 and evenly divisible by 100 it is not a leap year
  else
  - if year is evenly divisible by 4 and not evenly divisible by 100 it is a leap year

  - if year is evenly divisible by 100 and is divisible evenly by 400 it is a leap year
  else
  - if year is evenly divisible by 100 and not evenly divisible by 400 it is not a leap year


=end

def leap_year?(year)
  year % 2 != 0 || (year % 4 == 0 && year % 100 == 0 && year % 400 != 0)
  if year % 2 != 0
    return false
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 != 0
    return false
  end
  true
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

#LS Solution

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

#Short version

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end