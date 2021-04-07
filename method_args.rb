def take(array, len=1)
  array[len..-1]
end

p take([1,2,3], 1)
p take([1,2,3,4,5], 2)
p take([1,2,3,4,5], 3)
p take([1,2,3])


def prefix(s, len=1)
  s[0,len]
end

p prefix("Victoria")
p prefix("Victoria", 5)

def default_index(array, index=0)
  array[index]
end

default_index([1,2,3,4,5], 4)