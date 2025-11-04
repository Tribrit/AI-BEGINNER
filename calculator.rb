# Object-Oriented Ruby Calculator with History and Input Validation

class Calculator
  def initialize
    @history = []
    puts " Welcome to the Object-Oriented Ruby Calculator with History!"
  end

  # --- Core Arithmetic Methods ---
  def add(a, b) 
    a + b
  end
  def subtract(a, b) 
     a - b
  end
  def multiply(a, b) 
     a * b
  end
  def divide(a, b) 
     b == 0 ? "Error: Division by zero!" : a / b
  end
  def modulus(a, b) 
     a % b
  end
  def square(a) 
    a * a
  end
  def power(a, b)
    result = 1
    b.to_i.times { result *= a }
    result
  end

  # --- Input Handling with Validation ---
  def get_number(prompt)
    loop do
      print prompt
      input = gets.chomp
      if valid_number?(input)
        return input.to_f
      else
        puts "❌ Invalid input! Please enter a numeric value."
      end
    end
  end

  # --- Menu and History ---
  def show_menu
    puts "\n--- Calculator Menu ---"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    puts "5. Modulus (%)"
    puts "6. Power (^)"
    puts "7. Square a number"
    puts "8. View Calculation History"
    puts "9. Exit"
  end

  def show_history
    puts "\n📜 --- Calculation History ---"
    if @history.empty?
      puts "No previous calculations found."
    else
      @history.each_with_index { |record, i| puts "#{i + 1}. #{record}" }
    end
  end

  def log_history(entry)
    @history << entry
  end

  # --- Main Program Loop ---
  def run
    loop do
      show_menu
      print "\nChoose an option (1-9): "
      choice = gets.chomp

      case choice
      when "1" then perform_two_number_op(:add, "+")
      when "2" then perform_two_number_op(:subtract, "-")
      when "3" then perform_two_number_op(:multiply, "*")
      when "4" then perform_two_number_op(:divide, "/")
      when "5" then perform_two_number_op(:modulus, "%")
      when "6" then perform_two_number_op(:power, "^")
      when "7"
        num = get_number("Enter a number to square: ")
        result = square(num)
        puts "The square of #{num} is #{result}"
        log_history("Square of #{num} = #{result}")
      when "8" then show_history
      when "9"
        puts "\n👋 Thank you for using the Ruby Calculator. Goodbye!"
        break
      else
        puts "\n❌ Invalid choice! Please select an option from 1 to 9."
      end
    end
  end

  private

  def perform_two_number_op(method, symbol)
    num1 = get_number("Enter the first number: ")
    num2 = get_number("Enter the second number: ")
    result = send(method, num1, num2)
    puts "\nResult: #{num1} #{symbol} #{num2} = #{result}"
    log_history("#{num1} #{symbol} #{num2} = #{result}")
  end

  def valid_number?(str)
    !!(/\A[+-]?\d+(\.\d+)?\z/.match(str))
  end
end

# --- Run the Program ---
calc = Calculator.new
calc.run
