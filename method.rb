def return_tea
  "Tea"
end

puts return_tea

def return_tea_and_biscuits
  "I like #{return_tea.downcase} and biscuits"
end

puts return_tea_and_biscuits

def strike
  "<strike>#{return_tea_and_biscuits}</strike>"
end

puts strike

def tea_and_biscuits_array
  return_tea_and_biscuits.split(" ")
end

p tea_and_biscuits_array