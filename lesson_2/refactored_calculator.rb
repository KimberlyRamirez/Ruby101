def clear_screen
  system "clear"
end

def display_welcome
  puts "Welcome to the Mortgage Calculator!"
  puts "------------------------------------"

  display_welcome
end

loop do

loan_amount = ""
def retrieve_full_loan

  loop do
    puts "What is your remaining loan amount?"
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      puts "Must enter a number greater than 0."
    else
      break
    end
  end

  loan_amount
end

duration_months = ""
def retrieve_duration
  loop do
    puts "What is your remaining loan duration? (in years)"
    duration_months = gets.chomp
    if duration_months.empty? || duration_months.to_f < 0
      puts "Must enter positive number."
    else
      break
    end
  end
  duration_months
end

interest_rate = ""
def retrieve_interest
  loop do
    puts "What is your Annual Percentage Rate?"
    puts "(Example: 10 for 10% or 5.5 for 5.5%)"
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      puts "Must enter positive number."
    else
      break
    end
  end
  interest_rate
end

annual_interest_rate = ""
def calculate_annual(interest)
  annual_interest_rate = interest.to_f / 100

  annual_interest_rate
end

monthly_percent_rate = ""
def calculate_monthly_percent(annual_interest_rate)
  monthly_percent_rate = annual_interest_rate / 12

  monthly_percent_rate
end

duration_months = ""
def calculate_months(duration)
  duration_months = duration_months.to_i * 12

  duration_months
end

  monthly_payment = loan_amount.to_f *
                    (monthly_percent_rate /
                    (1 - (1 + monthly_percent_rate)**(-duration_months)))
  monthly_payment_rounded = monthly_payment.round(2)
  puts "Your monthly payment is $#{monthly_payment_rounded}"
  puts "---------------------------"
  puts "Would you like to do another calculation? (Y/N)"
  another_calulation = gets.downcase
  break unless another_calulation.start_with?('y')
end

puts "Thanks for using the Mortgage Calculator"