# Build a class with:

# at least three attributes (using at least two data types) 
# whose values will vary from instance to instance (example: age)

# at least three methods, at least one of which takes an argument

# define class goats

# attributes: attitude, sex, name (accessor)
# methods: milk, jump on something, speak -- changes attitude
# attitude_array = ["stoked", "fiesty", "mean", "goofy"]

class Goat
	attr_accessor :name, :age
	attr_reader :attitude

	def initialize(name, age, attitude)
		puts "Initializing Goat instance..."
		puts "Baaahhhh"
		@name = name
		@age = age
		@attitude = attitude
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

	def celebrate_birthday
		@age += 1
	end
end

puts "How many goats would you like to create?"
num_of_goats = gets.chomp.to_i

goats = []
attitude_array = ["stoked", "fiesty", "mean", "goofy"]

until goats.length == num_of_goats
	puts "Input a goat name: "
	goat_name = gets.chomp
	puts "Input #{goat_name}'s age: " 
	goat_age = gets.chomp.to_i

	goats << Goat.new(goat_name, goat_age, attitude_array.sample)
end

goats.each do |goat|
	puts "Name: #{goat.name}"
	puts "Age: #{goat.age}"
	puts "Attitude: #{goat.attitude}"
end

