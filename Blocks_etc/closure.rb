def plus_1(y)
  x = 5
  y.call
end

x = 1
y = -> { x + 1 }
puts plus_1(y)  # 2



def plus_one(y)
  x = 1
  return x + y
end

y = 6
puts plus_one(y) # 7
