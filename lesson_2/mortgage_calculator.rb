def prompt(message)
  puts message
end

loop do
  prompt("Welcome to the Mortgage Calculator!")
  prompt("------------------------------------")

  loan_amount = ""
  loop do
    prompt("What is your remaining loan amount?")
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter a number greater than 0.")
    else
      break
    end
  end

  duration_months = " "
  loop do
    prompt("What is your remaining loan duration? (in years)")
    duration_months = gets.chomp
    if duration_months.empty? || duration_months.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  interest_rate = " "
  loop do
    prompt("What is your Annual Percentage Rate?")
    prompt("(Example: 10 for 10% or 5.5 for 5.5%)")
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_percent_rate = annual_interest_rate / 12
  duration_months = duration_months.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_percent_rate /
                    (1 - (1 + monthly_percent_rate)**(-duration_months)))
  monthly_payment_rounded = monthly_payment.round(2)

  prompt("Your monthly payment is $#{monthly_payment_rounded}")
  prompt("---------------------------")

  prompt("Would you like to do another calculation? (Y/N)")
  another_calulation = gets.downcase
  break unless another_calulation.start_with?('y')
end

prompt("Thanks for using the Mortgage Calculator")
