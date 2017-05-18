


@result = nil


def first_number
    puts "Enter your first number"
    @first = gets.chomp
    if /[[:digit:]]/.match(@first)
        @first = @first.to_f
        operator_menu
    else
        puts "enter digits only"
        first_number
    end
    
end

def operator_menu
    puts "Select what you would like to do (+, -, *, /)"
    @operator = gets.chomp
    case @operator
        when "+", "-", "*", "/"
            second_number
        else
            puts "enter a valid operator"
            operator_menu
    end
end

def second_number
    puts "Enter your second number"
    @second = gets.chomp
    if /[[:digit:]]/.match(@second)
        @second = @second.to_f
        result1
    else
        puts "enter digits only"
        second_number
    end
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
            if @second != 0.0
                @result = @first / @second
            else
                puts "cannot divide by zero"
                second_number
            end
    end
    puts @result

    main_menu
end

def string_menu
    puts "Enter a basic equation (note: In BETA - your result will not be saved to memory"
    print "> "
    string_equation = gets.chomp
    puts `echo "scale=2; #{string_equation}" | bc`
    puts "\n\n\n"
    main_menu


end

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
    puts "3) clear the calculator's memory for a new calculation"
    puts "4) Exit  "

main_menu_choice = gets.chomp
    case main_menu_choice
        when  "1"
            run_calculator
        when "2"
            string_menu
        when "3"
            @result = nil
            main_menu
        when "4"
        exit(0)
    else
        puts "Please select a valid option"
        main_menu
    end
end


main_menu



