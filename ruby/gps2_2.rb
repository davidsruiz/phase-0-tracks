# Method to create a list 
def create(str)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  default_quantity = 1
  # create a list hash
  list = {}
  # breakdown string input into array using " " delimiter
  item_name = str.split(" ")
  # using each, add every item to hash with default quantity
  item_name.each do |name| 
    list[name] = default_quantity
  end
  # run print method
# output: A list hash 
  return list
end

# Method to add an item to a list

def add_item(list, name, quantity = 1) 
# input: item name and optional quantity
# steps: 
# create add method with name and optional quantity arguments
# add name and quantity to hash
  list[name] = quantity
# output: print "your item has been added to the hash"
  return list
end


# Method to remove an item from the list
def remove_item(list, name)
# create remove method with name arguments
# check if item is in the hash
  if list[name] != nil
# remove item if present
    list.delete(name)
  end
# output: print "your item has been deleted from the hash"
  return list
end

# Method to update the quantity of an item
# input: item name and amount
def update_item(list, name, quantity)
  # steps: 
  # check if item is present
  if list[name] != nil
    # update with new amount
    list[name] = quantity
  end
  return list
  # output: list
end

  
  

# Method to print a list and make it look pretty
# input: list - hash to be printed
def print_list(list)
  # steps:
  # use each method to print the following: "You have #{quantity} #{item_name}"
  list.each do |name, quantity|
    puts "You have #{quantity} of #{name}!"
  end
  # output: -no output-
end



food = {}
add_item(food, "Lemonade", 2)
add_item(food, "Tomatoes", 3)
add_item(food, "Onions", 1)
add_item(food, "Ice Cream", 4)
remove_item(food, "Lemonade")
update_item(food, "Ice Cream", 1)
print_list(food)

=begin
What did you learn about pseudocode from working on this challenge?
	Regardless of everyone having their own style, the core
	skeleton, the idea that makes up the escence of the program
	is the same.
What are the tradeoffs of using arrays and hashes for this challenge?
	Hashes was more suited for this kind of computation. In order 
	to complete the same with Array it world take two one holding 
	the name and the other holding the amount which would have 
	gotten tedious and messy. Similarly if both were stored in a 
	single entry in the array, say seperated by a space, its 
	readability would be reduced drastically.
What does a method return?
	A method can return all data types including nil and blocks
	of other code. The purpose of returning something is to 
	provide communication between methods as a way of
	encapsulating data.
What kind of things can you pass into methods as arguments?
	A method can take all data types as well, including nil and
	other code blocks.
How can you pass information between methods?
	A method should be as generic as possible and take any 
	variables of the problem AS ARGUMENTS. That method or other
	methods can return appropriate values to keep the information
	flow going.
What concepts were solidified in this challenge, and what concepts are still confusing?
	The purpose of methods and the functionality they provide as
	the solvers of a specific problem assigned. Together they can
	solve much larger problems.
=end
