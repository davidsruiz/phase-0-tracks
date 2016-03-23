puts "What's your hamster's name?"

name = gets.chomp

volume = nil
puts "What's your hamster's volume level (1-10)?"

loop do
  volume = gets.chomp
  volume = volume.to_i
  break if volume >= 1 && volume <= 10
  puts "Please enter a number between 1 and 10."
end

puts "What's your hamster's fur color?"

fur_color = gets.chomp

puts "Do you hamster think your hamster is a good candidate for adoption (y/n)?"

adoptable = gets.chomp

if adoptable == "y"
  adoptable = true
elsif adoptable == "n"
  adoptable =  false
else
  puts "Sorry, invalid input."
end

puts "What's your hamster's estimated age?"

age = gets.chomp

if age == ""
  age = nil
else
  age = age.to_i
end

puts "------------------------"

puts "Hamster name: #{name}"

puts "Volume level: #{volume}"

puts "Fur color: #{fur_color}"

puts "Adoptability: #{adoptable}"

puts "Age: #{age}"

puts "------------------------"