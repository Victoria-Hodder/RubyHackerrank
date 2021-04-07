def sum_terms(n)
  n.reduce(1) {|sum, num| num + (num**2) - 1}
end

p sum_terms([1])
p sum_terms([1,2])
p sum_terms([1,2,3])


def multiply_terms(n)
  n.inject(2) {|sum, num| num * sum}
end

p multiply_terms([1])
p multiply_terms([1,2])
p multiply_terms([1,2,3,4])