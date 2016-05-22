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

def create_list(string)
	grocery_list = Hash.new
	items = string.split(' ')
	items.each { |item| grocery_list[item.to_sym] = 0 }
	# print hash with print method
	print_list
end

def add_item(string)
	add_items = string.split(' ')
	grocery_list[add_items[0].to_sym] = add_items[-1].to_i
	# print hash
	print_list
end

def remove_item(string)
	key = string.to_sym
	grocery_list.delete(key)
	# print hash
	print_list
end

def update_list(string)
	update_item = string.split(' ')
	grocery_list[update_item[0].to_sym] = update_item[-1].to_i
	# print hash
	print_list
end

def print_list
	grocery_list
end










