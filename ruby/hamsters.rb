
puts "What's your hamster's name?"

name = gets.chomp

puts "What's your hamster's volume level (1-10)?"

volume = gets.chomp

puts "What's your hamster's fur color?"

fur_color = gets.chomp

puts "Do you hamster think your hamster is a good candidate for adoption (y/n)?"

adoptable = gets.chomp

puts "What's your hamster's estimated age?"

age = gets.chomp

if age == ""
  age = nil
end