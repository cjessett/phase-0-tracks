# Client Data

# prompt user for:

# Data needed:
# name
# age
# number of children
# decor theme

# update a key/value pair or none

clients = Hash.new("Unknown")
 
puts "What is your client's name: "
clients[:name] = gets.chomp

puts "What is your client's age: "
clients[:age] = gets.chomp.to_i

puts "How many children does your client have: "
clients[:children] = gets.chomp.to_i

puts ""