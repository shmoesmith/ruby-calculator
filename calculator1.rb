

#error checking

#result should set first_number and allow for another nodifer to last number so results can build
#until user decides to clear calculator

#make + - * / work

#make clear work

@result = nil

def first_number
    puts "Enter your first number"
    @first = gets.chomp.to_f
    operator_menu
end

def operator_menu
    puts "Select what you would like to do (+, -, *, /)"
    @operator = gets.chomp
    second_number
end

def second_number
    puts "Enter your second number"
    @second = gets.chomp.to_f
    result1
end

def result1
    puts "Calculating..."
    case @operator
        when "+"
          @result = @first + @second
        when "-"
           @result = @first - @second
        when  "*"
           @result = @first * @second
        when  "/"
           @result = @first / @second
    end
    puts @result

    main_menu
end

def string_menu
    "Enter a basic equation"
    string_equation = get.chomp
    string_equation.split()

def run_calculator
    if @result == nil
        first_number
    else
        puts "new equation on the last result: #{@result}"
        @first = @result
        operator_menu
    end
end



def main_menu
    puts "Welcome to the.....CALCULATOR OF DESPAIR!"
    puts "1) Start Calculating!"
    puts "2) Enter a basic equation (+ - * /)"
    puts "3) clear the calculator"
    puts "4) Exit  "

main_menu_choice = gets.chomp
    case main_menu_choice
        when == "1"
            run_calculator
        when == "2"
            string_menu
        when == "3"
            @result = nil
        when  == "4"
        exit(0)
    else
        puts "Please select option 1 or 2"
        main_menu
    end
end


main_menu



