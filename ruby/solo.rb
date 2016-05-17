# Build a class with:

# at least three attributes (using at least two data types) 
# whose values will vary from instance to instance (example: age)

# at least three methods, at least one of which takes an argument

# define class goats

# attributes: attitude, sex, name (accessor)
# methods: milk, speak(# of times), feed -- changes attitude
# attitude_array = ["stoked", "fiesty", "mean", "goofy"]

class Goat
	attr_accessor :name
	attr_reader :attitude, :sex

	
	@attitude = attitude.sample

	def initialize(name, sex)
		puts "Initializing goat instance..."
	end

	def milk
		puts "Baaahhhh  **milking**"
	end

	def speak(num)
		num.times { puts "Baaahhh" }
	end

	def 

end