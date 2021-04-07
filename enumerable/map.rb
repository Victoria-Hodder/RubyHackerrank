def power_of_2(array)
  array.map {|i| i**2}
end

array = [1,2,3,4,5]
p power_of_2(array)

def power_of_3(array)
  array.each {|i| i**3}
end

p power_of_3(array)