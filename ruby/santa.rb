class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(0..140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!"
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

	def to_s
		"Gender: #{@gender}\nEthnicity: #{@ethnicity}\nAge: #{@age}"
	end
end

# define arrays
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# create a santa with random arguments from gender, ethnicity arrays
# update age
# print attributes
1.times { 
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	puts santa
	puts santa.speak
}