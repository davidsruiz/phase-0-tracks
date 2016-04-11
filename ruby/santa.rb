
class Santa
	attr_reader :gender, :ethnicity, :reindeer_ranking
	attr_accessor :age
	#attr_writer - creates writable

	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# getter methods

	def gender
		@gender
	end
	
	def ethnicity
		@ethnicity
	end
  
  def speak
  	puts "Ho, ho, ho! Haaaaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type} cookie!"
  end

  def celebrate_birthday
  	++@age
  end

  def get_mad_at(reindeer)
  	@reindeer_ranking << @reindeer_ranking.delete(reindeer)
  end

end


=begin
====  DRIVER CODE ====
Joe = Santa.new("modern", "baconColored")
Joe.speak
Joe.eat_milk_and_cookies("snickerdoodle")
Joe.get_mad_at("Dasher")
p Joe.reindeer_ranking

p Joe.gender

=end



def return_random(arr)
	return arr[rand(arr.length)]
end

def create_random_santa
	genders = [
	"Agender",
	"Androgyne/Androgynous",
	"Bigender",
	"Female to Male/ FTM",
	"Gender Fluid",
	"Gender Nonconforming",
	"Gender Questioning",
	"Gender Variant",
	"Genderqueer",
	"Intersex",
	"Male to Female/MTF"
]

ethnicities = [
	"Zhuang",
	"Volga Tatars",
	"Uyghur",
	"Turkmens",
	"Tuaregs",
	"Thais",
	"Tamils",
	"Sundanese",
	"Slovenes",
	"Sinhalese"
]
	santa = Santa.new(return_random(genders), return_random(ethnicities))
	santa.age = rand(140)
	return santa
end

def print_santa(santa)
	print santa.gender
	print " "
	print santa.ethnicity
	print " "
	puts santa.age
end

200.times { |i| 
	print "Santa #{i+1} - "
	print_santa create_random_santa
}






