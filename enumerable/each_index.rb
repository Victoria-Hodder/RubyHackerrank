# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem

def skip_animals(animals, skip)
  animals.map.with_index { |item, index| "#{index}:#{item}" }.drop(skip)
end


# def skip_animals(animals, skip)
#   arr = []
#   animals.each_with_index do |item, index|
#     if(index >= skip)
#         arr.push("#{index}:#{item}")
#     end
#   end
#   arr
# end

p skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)

