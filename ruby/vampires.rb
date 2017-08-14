# Interview with the Vampire

puts "How many employees will be processed?"
num_employees = gets.chomp
num_employees = num_employees.to_i
puts "Response: #{num_employees}"

until num_employees == 0

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


  current_year = Time.now.year
  employee_age_calculated = current_year - employee_birth_year
  puts "Calculated age: #{employee_age_calculated}"

  if employee_age_given > 150
    employee_age = false
  elsif (employee_age_given != employee_age_calculated) && (employee_age_given != employee_age_calculated - 1)
    employee_age = false
  else
    employee_age = true
  end

  puts "Employee age: #{employee_age}"

  # Garlic Code Block

  valid_garlic_input = false

  until valid_garlic_input

    puts "Our company's cafeteria serves garlic bread. Should we order some for you (y/n)?"
    garlic_bread = gets.chomp
    garlic_bread = garlic_bread.downcase

    if garlic_bread == "y" || garlic_bread == "yes"
      garlic_bread = true
      valid_garlic_input = true
    elsif garlic_bread == "n" || garlic_bread == "no"
      garlic_bread = false
      valid_garlic_input = true
    else
      puts "Please answer with 'y' or   'n'. "
    end

  end

  puts "Response: #{garlic_bread}"

  # Insurance Code Block

  valid_ins_input = false

  until valid_ins_input

    puts "Would you like to enroll in   the company's health insurance?"
    health_ins = gets.chomp
    health_ins = health_ins.downcase

    if health_ins == "y" || health_ins   == "yes"
      health_ins = true
      valid_ins_input = true
    elsif health_ins == "n" ||   health_ins == "no"
      health_ins = false
      valid_ins_input = true
    else
      puts "Please answer with 'y' or   'n'. "
    end

  end

  puts "Response: #{health_ins}"

  # Allergies Code Block

  valid_allergies_input = false

  until valid_allergies_input

    puts "Name any allergies you have, one at a time. Type 'done' when finished."
    allergies = gets.chomp
    allergies = allergies.downcase

    if allergies == "sunshine"
      allergies = true
      valid_allergies_input = true
    elsif allergies == "done"
      valid_allergies_input = true
    else
      valid_allergies_input = false
    end

  end

  # Detection Logic

  if (employee_name != "drake cula" && employee_name != "tu fang") && (employee_age == true && garlic_bread == true && health_ins == true && allergies == true)
    result = "Probably a vampire."

  elsif (employee_name != "drake cula" && employee_name != "tu fang") && (employee_age == true && garlic_bread == true && health_ins == true)
    result = "Probably not a vampire."

  elsif (employee_name != "drake cula" && employee_name != "tu fang") && (employee_age == false && garlic_bread == true && health_ins == false)
    result = "Probably a vampire."

  elsif (employee_name != "drake cula" && employee_name != "tu fang") && (employee_age == false && garlic_bread == false && health_ins == true)
    result = "Probably a vampire."

  elsif (employee_name != "drake cula" && employee_name != "tu fang") &&   employee_age == false && garlic_bread == false && health_ins == false
    result = "Almost certainly a vampire."

  elsif (employee_name == "drake cula" || employee_name == "tu fang")
    result = "Definitely a vampire."

  else
    result = "Results inclusive."

  end

  puts "Results: #{result}"

  num_employees -= 1

  if num_employees > 0
    puts "Remaining employees to be processed: #{num_employees}"
  else
    puts "You're done!"
  end

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
