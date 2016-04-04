
hash = {name: "", age: 0, children: 0, theme: "", happy: false}

puts "Please enter the client's: "
print "Name "
hash[:name] = gets.chomp
print "Age "
hash[:age] = gets.chomp.to_i
print "Number of Children "
hash[:children] = gets.chomp.to_i
print "Decor theme "
hash[:theme] = gets.chomp
print "Happieness status (y or n) "
placeholder = gets.chomp
if placeholder == "y"
	hash[:happy] = true
end

p hash

print "Update en entry ('none' to keep same)? "
response = gets.chomp

if response != "none" && response != ""
	print "Update to what value? "
	hash[response.to_sym] = gets.chomp

	p hash
end

puts "Goodbye!"