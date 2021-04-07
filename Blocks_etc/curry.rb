power_function = -> (x, z) {
    (x) ** z
}

base = 5
raise_to_power = power_function.curry.(base)

power = 6
puts raise_to_power.(power)
