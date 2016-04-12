

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily
		"Yay! I'm happy!!"
	end
end


class Neighbor
	include Shout
end

class Sibling
	include Shout
end


weird_guy_next_door = Neighbor.new
p weird_guy_next_door.yell_angrily("Mow your own lawn")
p weird_guy_next_door.yelling_happily


sister = Sibling.new
p sister.yell_angrily("Go away")
p sister.yelling_happily




=begin	- Ye Old Code! -

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

=end