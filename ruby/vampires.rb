# Vampires .rb #

def process_employee

	# Interogation #

	puts "Hello"
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


	# Corrections #

	correct_age = likes_garlic = wants_insurance = false

	if age == (Time.now.year - birthyear.to_i)
		correct_age = true 
	else
		correct_age = false
	end

	if likes_garlic == "true"
		likes_garlic = true
	else
		likes_garlic = false
	end

	if wants_insurance == "true"
		wants_insurance = true
	else
		wants_insurance = false
	end

	# Evaluation #

	message = ""

	if name == (“Drake Cula” || “Tu Fang”)
		message = "Definitely a vampire."
	elsif correct_age && (likes_garlic || wants_insurance)
		message = "Probably not a vampire."
	elsif !correct_age && (!likes_garlic || !wants_insurance)
		message = "Probably a vampire."
	elsif !correct_age && (!likes_garlic && !wants_insurance)
		message = "Almost certainly a vampire."
	else
		message = "Results inconclusive."
	end

	puts message

end


# Excecution #

puts "Please enter the number of employees to process: "
times = gets.chomp

(0...times).each do process_employee 
