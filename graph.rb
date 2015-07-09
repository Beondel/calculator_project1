def graph(equation)
  slope = equation[0...equation.index("x")]
  if slope == ""
    slope = "1"
  end
  slope = slope.to_i
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
  spot = 400
  i = 0
  while spot > 0
    graph[spot + (2 * i)] = "#"
    graph[spot + (2 * i) + 1] = "#"
    spot -= (42 * slope)
    i += 1
  end
  spot = 482
  i = 0
  while spot < graph.length
    graph[spot - (2 * i)] = "#"
    graph[spot - (2 * i) - 1] = "#"
    spot += (42 * slope)
    i += 1
  end
  return graph
end

puts graph("x")