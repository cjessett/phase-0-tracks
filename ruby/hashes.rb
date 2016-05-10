# Client Data

# prompt user for:

# Data needed:
# name
# age
# number of children
# decor theme

# update a key/value pair if necessary

clients = Hash.new
 
puts "What is your client's name: "
clients[:name] = gets.chomp

puts "What is your client's age: "
clients[:age] = gets.chomp.to_i

puts "How many children does your client have: "
clients[:children] = gets.chomp.to_i

puts "What is your client's decor theme: "
clients [:decor_theme] = gets.chomp

p clients

puts "Enter a key you would like to modify or type none: "
choice = gets.chomp

if choice = "none"
	break
else puts "What is the new value for #{choice.to_sym}: "
	clients[choice.to_sym] = gets.chomp
end

p clients
