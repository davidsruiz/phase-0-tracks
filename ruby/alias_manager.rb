def swap_first_last(str)
	parts = str.split(" ")
	return parts[1] + " " + parts[0]
end

vowels = ["a", "e", "i", "o", "u"]

def shift(str)
	characters = str.chars
	characters.map do |e|
		if vowels.index(e) != nil
			i = vowels.index(e)
			i = 0 if ++i >= vowels.length 
			return vowels[i]
		else 
			return e
		end
	end
end

def encrypt(str)
	str = swap_first_last(str)
	str = shift(str)
end

print "Please enter spy name: "
name = gets.chomp