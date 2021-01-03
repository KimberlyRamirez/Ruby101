def clear_screen
  system "clear"
end

clear_screen

def display_welcome
  puts "Welcome to the Mortgage Calculator!"
  puts "------------------------------------"
end

display_welcome

loop do
  def retrieve_full_loan

    loop do
      puts "What is your remaining loan amount?"
      loan_amount = gets.chomp.strip

      if loan_amount.empty? || loan_amount.to_f < 0
        puts "Must enter a number greater than 0"
      else
        break
      end
    end
    loan_amount
  end

  def retrieve_duration
    duration_months = ' '

    loop do
      puts "What is your remaining loan duration? (in years)"

      duration_months = gets.chomp.strip
      if duration_months.empty? || duration_months.to_i < 0
        puts "Must enter a number greater than 0"
      else
        break
      end
    end
    duration_months
  end

  def retrieve_interest_rate
    interest_rate = ' '

    loop do
      puts "What is your Annual Percentage Rate?"
      puts "(Example: 10 for 10% or 5.5 for 5.5%)"

      interest_rate = gets.chomp.strip
      if interest_rate.empty? || interest_rate.to_f < 0
        puts "Must enter a number greater than 0"
      else
        break
      end
    end
    interest_rate
  end

  def play_again?
    loop do
      puts "Would you like to calculate again?"
      another_calculation = gets.chomp.downcase.strip
      case another_calculation
      when 'yes', 'y'
        break true
      when 'no', 'n'
        break false
      else
        puts "Invalid answer. Please type Y/Yes or N/No"
      end
    end
  end

  annual_interest = retrieve_interest_rate.to_f / 100

  monthly_percent_rate = annual_interest / 12

  duration_in_months = retrieve_duration.to_i * 12

  monthly_payment = retrieve_full_loan.to_f *
                    (monthly_percent_rate /
                    (1 - (1 + monthly_percent_rate)**(-duration_in_months)))

  monthly_payment_rounded = monthly_payment.round(2)

  puts "Your monthly payment is #{monthly_payment_rounded}"
  puts "--------------------------------------------------"

  break unless play_again?
end

def goodbye
  puts "Thanks for using the Mortgage Calculator"
end

goodbye

clear_screen

