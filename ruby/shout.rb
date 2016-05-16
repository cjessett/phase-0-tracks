=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

Shout.yell_angrily("Arghh")
Shout.yelling_happily("Yippy")
=end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Human
	include Shout
end

class Goat
	include Shout
end

human = Human.new
puts human.yell_angrily("arghh")
puts human.yelling_happily("Yippy")

goat = Goat.new
puts goat.yell_angrily("baaahhhh")
puts goat.yelling_happily("baaahhhh")

