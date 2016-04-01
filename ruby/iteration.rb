def block_runner
  #before
  puts "I'm testing my block!"
  
  #block
  yield("pie", 3.14)
  
  #after
  puts "Block finished!"
  
end


block_runner { |first, second| puts "#{first} #{second}" }


# Release 1 #

pizza_toppings = ["sausage", "pepperoni", "cheese", "pineapple"]

phone_book = {"Bob" => 1702292, "Sally" => 5555555,  "Joe" => 1234567}

# EACH #

# before array each call
p pizza_toppings

# array each call
pizza_toppings.each do |topping|
  puts "I like this topping: #{topping}"
end

# after array each call
p pizza_toppings

# before hash each call
p phone_book

# hash each call
phone_book.each do |name, number|
  puts "You can reach #{name} at #{number}"
end

# after hash each call
p phone_book



