# Vampires .rb #

def process_employee

	status = "okay" # "okay | abort"

	# Interogation #

	puts "What is your name? "
	name = gets.chomp

	puts "How old are you? "
	age = gets.chomp
	puts "What year were you born? "
	birthyear = gets.chomp

	puts "Our company cafeteria serves garlic bread."
	puts "Should we order some for you? "
	likes_garlic = gets.chomp

	puts "Would you like to enroll in the company’s health insurance? "
	wants_insurance = gets.chomp

	puts "Please list all allergies (type 'done' when finished): "

	lastAllergy = ""
	until lastAllergy == "done"
		print "> "
		lastAllergy = gets.chomp
		if lastAllergy == "sunshine"
			status = "abort"
			break
		end
	end


	# Corrections #

	if status == "okay"

		correct_age = false
		
		if age.to_i == (Time.now.year.to_i - birthyear.to_i)
			correct_age = true 
		else
			correct_age = false
		end

		if likes_garlic == "yes"
			likes_garlic = true
		else
			likes_garlic = false
		end

		if wants_insurance == "yes"
			wants_insurance = true
		else
			wants_insurance = false
		end

	end

	# Evaluation #

	message = " - NO MESSAGE - "

	if status == "okay"

		if name == ("Drake Cula" || "Tu Fang")
			message = "Definitely a vampire."
		elsif correct_age && (likes_garlic || wants_insurance)
			message = "Probably not a vampire."
		elsif !correct_age && (!likes_garlic && !wants_insurance)
			message = "Almost certainly a vampire."
		elsif !correct_age && (!likes_garlic || !wants_insurance)
			message = "Probably a vampire."
		else
			message = "Results inconclusive."
		end

	elsif status == "abort"

		message = "Probably a vampire."

	end

	puts message

end


# Excecution #

puts "Hello"
puts "Please enter the number of employees to process: "
times = gets.chomp.to_i

(0...times).each do process_employee end

puts ""
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends. ;)"

