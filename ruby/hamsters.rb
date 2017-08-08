def hamster_santuary
  puts "What is the hamster's name?"
  hamster_name = gets.chomp

  puts "What is the hamster's volume level from 1 to 10?"
  volume_level = gets.chomp

  puts "What is the hamster's fur color?"
  fur_color = gets.chomp

  puts "Is the hamster a good candidate for adoption (y/n)?"
  adoption = gets.chomp

  puts "What is the hamster's estimated age?"
  estimated_age = gets.chomp
  if estimated_age.empty?
    estimated_age = nil
  end
end