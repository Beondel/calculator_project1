#PUT ALL FUNCTIONS ABOVE THIS

def add(num1, num2)
  puts num1 + num2
end

def subt(num1, num2)
  puts num1 - num2
end

def mult(num1, num2)
  puts num1 * num2
end

def div(num1, num2)
  if num2 == 0
    puts "undefined"
  else
    puts num1 / num2
  end
end

def exp(num1, num2)
  puts num1 ** num2
end

def mod(num1, num2)
  puts num1 % num2
end

def factorial(number)
  if number < 0
    return "Undefined"
  elsif number == 0
    return 1
  else
    answer = 1
    1.upto(number) do |no|
      answer *= no
    end
    return answer
  end
end

def graph(equation)
  slope = equation[0...equation.index("x")]
  if slope == ""
    slope = "1"
  elsif slope == "-"
    slope = "-1"
  end
  slope = slope.to_i
  puts slope
  graph = "
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
-----------------------------------------
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    
                    |                    "
if slope > 0
  spot = 400
else
  spot = 484
end
  i = 0
  while spot > 0 and spot < graph.length
    graph[spot + (2 * i)] = "#"
    graph[spot + (2 * i) + 1] = "#"
    spot -= (42 * slope)
    i += 1
  end
if slope > 0
  spot = 482
else
  spot = 398
end
  i = 0
  while spot > 0 and spot < graph.length
    graph[spot - (2 * i)] = "#"
    graph[spot - (2 * i) - 1] = "#"
    spot += (42 * slope)
    i += 1
  end
  return graph
end

def generate_tip(total, tip)
  final = (total * (tip.to_f / 100))
  tipp = (final*1000).round / 1000.0
  return "You should tip $" + tipp.to_s
end

puts "Hello! Welcome to Yoda Calculator (Beta). What would you like to do today?"
puts "Available functions are: "
puts "quit - - add - - subtract - - multiply - - divide \n
raise to a power - - take the modulus -- factorial\n
graph - - tip" #add later
input = gets.chomp.downcase

loop do
  if input == "add"
    puts "Enter the first number you would like to add."
    add1 = gets.chomp.to_i
    puts "Enter the second number you would like to add."
    add2 = gets.chomp.to_i
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
  elsif input == "tip"
    puts "How much did you pay in total?"
    total = gets.chomp.to_i
    puts "What percentage would you like to tip? (Do not type %)"
    tip = gets.chomp.to_i
    puts generate_tip(total, tip)
  elsif input == "graph"
    puts "enter an equation in the form of mx"
    multiple = gets.chomp
    puts graph(multiple)
  elsif input == "quit"
    puts "Goodbye."
    break
  end
  puts "What else would you like to do?"
  puts "quit - - add - - subtract - - multiply - - divide \n
raise to a power - - take the modulus -- factorial\n
graph - - tip"
  input = gets.chomp
end