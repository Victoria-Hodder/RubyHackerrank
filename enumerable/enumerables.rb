# FUNCTIONS WITH HASHES

def func_any(hash)
  # Check and return true if any key object within the hash is of the type Integer
  # If not found, return false.
   hash.any? { |key, _value| key.is_a? Integer }
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are < 10
  # If not all values satisfy this, return false.
  hash.all? { |_key, value| value.is_a?(Integer) && value < 10 }
end

def func_none(hash)
  # Check and return true if none of the values within the hash are nil
  # If any value contains nil, return false.
  hash.none? { |_key, value| value.nil? }
end

def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find { |key, value| (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) || 
  (key.is_a?(String) && value.is_a?(String) && value[0] == 'a') }
end

h = {"a" => 1, "b" => 2, "c" => 3}
h2 = {1 => 10, 2 => 20, 3 => 30}
h3 = {"a" => "apple", "b" => "berry", "c" => "carrot"}

# p func_any(h)
# p func_all(h)
# p func_none(h)
# p func_find(h2)
# p func_find(h3)


# FUNCTIONS WITH ARRAYS

def array_any(array)
  array.any? { |a| a.is_a? Integer }
end

def array_all(array)
  array.all? { |a| a < 6 }
end

def array_none(array)
  array.none? { |a| a.nil? }
end

def array_find(array)
  array.find { |a| (a[0] == "a") && (a[-1] == "e") }
end

num_array = [1,2,3,4,5]
letter_array = ["a", "b", "c", "d", "e"]
word_array = ["apple", "aardvark", "bottle", "cheese"]

# p array_any(num_array) # => true
# p array_any(letter_array) # => false
# p array_all(num_array) # => true
# p array_none(num_array) # => true - because none are nil
# p array_find(word_array) # => "apple"