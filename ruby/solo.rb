# Build a class with:

# at least three attributes (using at least two data types) 
# whose values will vary from instance to instance (example: age)

# at least three methods, at least one of which takes an argument

# define class goats

# attributes: attitude, sex, name (accessor)
# methods: milk, jump on something, speak -- changes attitude
# attitude_array = ["stoked", "fiesty", "mean", "goofy"]

class Goat
	attr_accessor :name, :gender
	attr_reader :attitude

	def initialize(name, gender)
		puts "Initializing Goat instance..."
		@name = name
		@gender = gender
	end

	def milk
		puts "Baaahhhh  **milking**"
	end

	def jump_on(object)
		puts "**jumps on #{object}**"
	end

	def speak
		puts "Baaahhhh"
	end
end