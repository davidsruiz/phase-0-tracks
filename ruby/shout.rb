
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily
		"Yay! I'm happy!!"
	end
end

p Shout.yell_angrily("Where is my bacon?")
p Shout.yelling_happily