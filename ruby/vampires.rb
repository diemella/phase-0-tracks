# Interview with the Vampire

puts "What is your name?"
employee_name = gets.chomp
employee_name = employee_name.downcase
puts "Response: #{employee_name}"

# Age Code Block

puts "How old are you?"
employee_age_given = gets.chomp
employee_age_given = employee_age_given.to_i
puts "Response: #{employee_age_given}"

puts "What year were you born?"
employee_birth_year = gets.chomp
employee_birth_year = employee_birth_year.to_i
puts "Response: #{employee_birth_year}"

current_year = 2017
employee_age_calculated = current_year - employee_birth_year
puts "Calculated age: #{employee_age_calculated}"

if employee_age_given > 150
  employee_age = false
elsif (employee_age_given != employee_age_calculated) && ( employee_age_given != employee_age_calculated - 1)
  employee_age = false
else
  employee_age = true
end

puts "Employee age: #{employee_age}"

# Garlic Code Block

valid_garlic_input = false

until valid_garlic_input === true

  puts "Our company's cafeteria serves garlic bread. Should we   order some for you (y/n)?"
  garlic_bread = gets.chomp
  garlic_bread = garlic_bread.downcase

  if garlic_bread == "y" || garlic_bread == "yes"
    garlic_bread = true
    valid_garlic_input = true
  elsif garlic_bread == "n" || garlic_bread == "no"
    garlic_bread = false
    valid_garlic_input = true
  else
    puts "Please answer with 'y' or 'n'. "
  end

end

puts "Response: #{garlic_bread}"

# Insurance Code Block

valid_ins_input = false

until valid_ins_input === true

  puts "Would you like to enroll in the company's health insurance?"
  health_ins = gets.chomp
  health_ins = health_ins.downcase

  if health_ins == "y" || health_ins == "yes"
    health_ins = true
    valid_ins_input = true
  elsif health_ins == "n" || health_ins == "no"
    health_ins = false
    valid_ins_input = true
  else
    puts "Please answer with 'y' or 'n'. "
  end

end

puts "Response: #{health_ins}"

