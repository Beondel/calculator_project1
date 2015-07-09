#PUT ALL FUNCTIONS ABOVE THIS

puts "Hello! Welcome to Skynet Calculator (Beta). What would you like to do today?"
puts "Available functions are: "
puts "quit - - add - - subtract - - multiply - - divide \n
raise to a power - - take the modulus -- factorial"#add later
input = gets.chomp.downcase

loop do
  if input == "add"
    puts "Enter the first number you would like to add."
    add1 = gets.chomp
    puts "Enter the second number you would like to add."
    add2 = gets.chomp
    puts "The answer is #{add(add1,add2)}"
  elsif input == "subtract"
    puts "Enter the first number you would like to subtract from."
    subtract1 = gets.chomp
    puts "Enter the number to be subtracted."
    subtract2 = gets.chomp
    puts "The answer is #{subt(subtract1,subtract2)}"
  elsif input == "multiply"
    puts "Enter the first number you would like to multiply."
    multiply1 = gets.chomp
    puts "Enter the second number you would like to multiply."
    multiply2 = gets.chomp
    puts "The answer is #{mult(multiply1,multiply2)}"
  elsif input == "divide"
    puts "Enter the number you would like to be divided."
    divide1 = gets.chomp
    puts "Enter the number you would like to divide by."
    divide2 = gets.chomp
    puts "The answer is #{div(divide1,divide2)}"
  elsif input == "raise to a power"
    puts "Enter the base."
    exp1 = gets.chomp
    puts "Enter the power."
    exp2 = gets.chomp
    puts "The answer is #{exp(exp1,exp2)}"
  elsif input == "take the modulus"
    puts "Enter your first number."
    mod1 = gets.chomp
    puts "Enter the base."
    mod2 = gets.chomp
    puts "The answer is #{mod(mod1,mod2)}"
  elsif input == "factorial"
    puts "Enter your number."
    fact = gets.chomp
    puts "The answer is #{factorial(fact)}"
  elsif input == "quit"
    puts "Goodbye."
    break
  end
  puts "What else would you like to do?"
  input = gets.chomp
end