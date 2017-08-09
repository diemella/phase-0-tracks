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
