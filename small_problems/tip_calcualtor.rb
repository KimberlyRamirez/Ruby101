=begin

------------PEDAC-------------

Problem:
        Input: - The bill amount in integers
               - The tip percetage in integers

        Output: - The tip in dollars
                - The total bill amount in dollars

Rules:
        Implicit: - Do we include change?
                  - Do we need to round to a certain decimal number?
                  - The example shows rounded to the first decimal
                    since we cannot ask the interviewer we will
                    assume it needs to be rounded to the first decimal
                    point.
                  - The percent does not include a % after it.
                  - The dollar signs do need to include the $ before
                    the dollar amount

        Explicit: The prgram must compute the top and then display
                  both the tip and total amount of the bill.

Examples:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0


Algo-Pseudocode: - Create a method with a parameter, potentially two parameters
                  - def method(parameter)

                 - Ask what the bill amount is
                  - Use the gets method
                  - Bind users bill response to a new variable so that I can access
                    it later

                 - Ask what the tip percentage is
                  - Use the gets method
                  - Bind the users tip percentage response to a new variable that I
                    can access later

                 - Divide tip percent by 100 to change the percent to something
                   we can multiply the bill by
                   - Initiate a new variable and bind the tips percentage variable
                     divided by 100 to is to access later

                 - Calculate the tip amount in dollars by multiplying the bill amount by
                   the tip percentage.
                    - Initiate a new variable where I take the tips percentage / 100 and
                      multipy it by the bill amount

                 - Calculate the total bill by adding the percent dollar amount
                   to the bill amount that was given by the user
                 - Display a tip amount in dollars
                 - Diplay the total bill amount in dollats

=end

puts "what is your bill"
retrieve_bill = gets.chomp.to_i
puts "How much would you like to tip"
retrieve_tip = gets.chomp.to_f
tip_conversion = retrieve_tip / 100
tip_in_dollars = retrieve_bill * tip_conversion
total_bill = tip_in_dollars + retrieve_bill
puts tip_in_dollars
puts total_bill

