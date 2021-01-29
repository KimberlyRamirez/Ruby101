#Build a program that displays when the user will retire and how many years she has to work till retirement.

=begin

---------Problem---------
Input: - The users age, integer
       - When the user retires, integer

Output: - The year that they will retire, integer
        - The year that we are currently in, integer
        - How long you have to work in years, integer

Rules:
    Explicit: - List the year it is, and how long you have till you retire

    Implicit: - Do you want the year to be 2016 or the current year. Is there a set year. The set year is 2016

              - Age of retirement is users choice.

Examples:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056 years.
You have only 40 years of work to years

Algo-Pseudocode:
- Ask user what their age is
  - use gets
- Ask user when they want to retire
  - use gets
- Take the year they want to retire and find out how
 many years that is from what year we are currently in
 - Try to initiate a variable with the age they want to retire minus the age they age and bind it to the variable
 - Take the years difference and add it to the current year
- Take what age they want to retire, and minus the age they are to determine how many years left they have to work.
 Display the already intiated variable
- Tell user what year it is and what year they will retire
 - Display variables telling the user what year it is, what year they will retire, and how many years they have until they retire
=end

puts "What is your age?"
retrieve_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retrieve_retired_age = gets.chomp.to_i

years_to_retire = (retrieve_retired_age - retrieve_age)

year = 2020

retirement_year = year + years_to_retire

puts "It's #{year}. You will retire in #{retirement_year}."

puts "You only have #{years_to_retire} of work to go!"