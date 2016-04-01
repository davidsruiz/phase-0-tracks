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

# MAP! #

# before array map! call
p pizza_toppings

# array map! call
pizza_toppings.map! do |topping|
  "extra " + topping
end

# after array map! call
p pizza_toppings


# Number 1

numbers = [1, 2, 3, 4, 5]

numbers.each do |num|
  
  numbers.delete(num) if num.even?
  
end

p numbers


# Number 2

numbers = [1, 2, 3, 4, 5]

new_numbers =[]

numbers.each do |num|
  
  new_numbers << num if num.odd?
  
end

p new_numbers


# Number 3

numbers = [1, 2, 3, 4, 5]

numbers.keep_if do |num|
  
  num > 3
  
end

p numbers


# Number 4

numbers = [1, 2, 3, 4, 5, -670]

new_numbers = numbers.drop_while do |num|
  
  num <= 2
  
end

p new_numbers



