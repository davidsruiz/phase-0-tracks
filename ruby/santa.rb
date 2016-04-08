
class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# getter methods

	def reindeer_ranking
		@reindeer_ranking
	end
  
  def speak
  	puts "Ho, ho, ho! Haaaaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type} cookie!"
  end

end


Joe = Santa.new("modern", "baconColored")
Joe.speak
Joe.eat_milk_and_cookies("snickerdoodle")

p Joe.reindeer_ranking