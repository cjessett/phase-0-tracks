class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# setter methods
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		p @reindeer_ranking
		reindeer_idx = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(reindeer_idx))
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	# getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

saint_nick = Santa.new("male", "white")

puts saint_nick.celebrate_birthday

puts saint_nick.get_mad_at("Vixen")

puts saint_nick.gender = "bisexual"

puts saint_nick.age

puts saint_nick.ethnicity
