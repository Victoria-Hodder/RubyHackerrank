def full_name(first_name, *middle_names, last_name)
  first_half_of_name = middle_names.reduce(first_name) {
    |first_name, middle_names| "#{first_name} #{middle_names}" 
  }
  "#{first_half_of_name} #{last_name}"
end

p full_name("Victoria", "Rose", "Hodder")
p full_name("Lucy", "Catherine", "Francis", "Gotham-Reymond")