def print_animal_loop(animal_list)
  animal_list.each { |animal| animal }
end

def print_animals(animal_list)
  while animal_list
    return animal_list
    break
  end
end 

def uppercase_animal(animal_list)
  animal_list.map { |animal| animal.upcase }
end

def index_animal(animal_list)
  animal_list.map.with_index { |animal, index| "We have a #{animal} with index #{index}" }
end


animals = ['leopard', 'bear', 'fox', 'wolf']

# puts print_animal_loop(animals)

# puts print_animals(animals)

puts uppercase_animal(animals)

puts animals.drop(2)

puts index_animal(animals)
