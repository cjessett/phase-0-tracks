# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # create a new hash called grocery_list
  # convert input to array of keys(symbols) by calling #split(' ')
  # loop through array and set default quantity to 0 for each key
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] - hash

# Method to add an item to a list
# input: item name and optional quantity (string and quantity seperated by space; ex: "carrots 10")
# steps:
	# convert input into an add_item_array with #split 
	# add key/value pair of add_item_array into grocery_list hash
# output: print grocery_list hash

# Method to remove an item from the list
# input: string of item we wish to remove
# steps:
	# convert string to symbol
	# delete symbol key from grocery_list hash
# output: print hash

# Method to update the quantity of an item
# input: string of item and quantity seperated by a space
# steps:
	# convert input to update_array with #split
	# update hash key/value pair with assignment
# output: print hash

# Method to print a list and make it look pretty
# input: none
# steps:
	# print the grocery_list hash
# output: grocery_list hash

$grocery_list = Hash.new

def create_list(string)
	items = string.split(' ')
	items.each { |item| $grocery_list[item] = 0 }
	# print hash with print method
	puts print_list
end

def add_item(string)
	add_items = string.split(' ')
	quantity = add_items[-1].to_i
	item = add_items[0...-1].join(' ')
	# here we account for multiple word items
	$grocery_list[item] = quantity
	# print hash
	puts "Added #{quantity} #{item}"
	puts print_list
end

def remove_item(string)
	$grocery_list.delete(string)
	# print hash
	puts "Removed #{string}"
	puts print_list
end

def update_list(string)
	update_item = string.split(' ')
	updated_quantity = update_item[-1].to_i
	updated_item = update_item[0...-1].join(' ')
	# again we account for multiple word items
	$grocery_list[updated_item] = updated_quantity
	# print hash
	puts "Updated #{updated_item} to #{updated_quantity}"
	puts print_list
end

def print_list
	$grocery_list.each { |key, value| puts "#{key}: #{value}"}
end


# Driver code

puts create_list("")

puts add_item("Lemonade 2")

puts add_item("Tomatoes 3")

puts add_item("Onions 1")

puts add_item("Ice Cream 4")

puts remove_item("Lemonade")

puts update_list("Ice Cream 1")

puts print_list


# Refactor:

# change key symbols to strings
# account for multiple word items (ex: Ice Cream)
# use #each method to print key/value pairs
# be more concise with key/value variable names in update/add methods



# Refect:

=begin

What did you learn about pseudocode from working on this challenge?
- That each line should be something easily converted into code

What are the tradeoffs of using arrays and hashes for this challenge?
- Arrays don't really handle the two types of data we are manipulating in this challange.
- Hashes are great for handling and accessing multiple types of data

What does a method return?
- It depends on the method but in this challene our methods return whatever they last
evaluated.

What kind of things can you pass into methods as arguments?
- All kinds of things! Array, hashes, integers, strings, other methods.

How can you pass information between methods?
- By calling methods within methods and defining global variables.

What concepts were solidified in this challenge, and what concepts are still confusing?
- Accessing items in hashes and printing them with the #each method. Global variables
are still kind of confusing. We weren't exactly sure why our hash had to be definited outside
of all of the methods as a global variable(with $) instead of without the $.

=end








