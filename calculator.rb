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
  elsif number = 0
    return 1
  else
    answer = 1
    1.upto(number) do |no|
      answer *= no
    end
    return answer
  end
end
=begin
puts "write an expression here:"
$expression = gets.chomp


def expression(n)
  n = $expression.split(" ").to_i
  
  puts n
end
=end

