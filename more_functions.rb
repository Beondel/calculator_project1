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

def pythag(leg1,leg2)
  return hypot(leg1,leg2)
end

def reg_poly (sides,length)
  return sides*(length**2)/4 * cot(2*PI/sides)
end