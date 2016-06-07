# CSA member manager

=begin
1. Allow users to add members to database
2. Allow users to access(read) members info in database
3. Allow users to alter member info
4. Allow users to delete members
=end

# require gems
require 'sqlite3'
require 'faker'

# database and table creations 

# create SQLite3 database
db = SQLite3::Database.new("csa.db")
db.results_as_hash = true

# create size table command
create_sizes_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS sizes(
		id INTEGER PRIMARY KEY,
		size VARCHAR(255)
	);
SQL

# create location table command
create_locations_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS locations (
		id INTEGER PRIMARY KEY,
		location VARCHAR(255)
	);
SQL

# create member table command
create_members_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS members(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		phone INT,
		eggs boolean,
		size INT,
		location INT,
		FOREIGN KEY (size) REFERENCES sizes(id),
		FOREIGN KEY (location) REFERENCES locations(id)
	);
SQL

# create tables
db.execute(create_sizes_cmd)
db.execute(create_locations_cmd)
db.execute(create_members_cmd)

if db.execute("SELECT COUNT (*) FROM sizes")[0][0] == 0
	db.execute("INSERT INTO sizes (size) VALUES (?), (?)", ["FULL"], ["HALF"])
	db.execute("INSERT INTO locations (location) VALUES (?), (?)", ["FARM"], ["MARKET"])
end


# ===============================================================

# CRUD methods

# create member method
def create_member(db, name, phone, eggs, size, location)
	db.execute("INSERT INTO members (name, phone, eggs, size, location) VALUES (?, ?, ?, ?, ?)", [name, phone, eggs, size, location])
end

# display member method
def display_members(db)
	db.results_as_hash = true
	display_members_cmd = <<-SQL
		SELECT members.name, members.eggs, sizes.size, locations.location, members.phone
		FROM members 
		JOIN sizes ON members.size = sizes.id 
		JOIN locations ON members.location = locations.id
	SQL
	results = db.execute(display_members_cmd)
	results.each do |member|
		puts "#{member["name"]} | #{member["phone"]} | Size: #{member["size"]} | Eggs: #{member["eggs"]} | Pick-Up: #{member["location"]}"
	end
end

# delete member method
def delete_member(db, member_name_to_delete)
	delete_member_cmd = <<-SQL
		DELETE FROM members WHERE name = ?
	SQL
	db.execute(delete_member_cmd, [member_name_to_delete])
end

# update member method
def update_member(db, property_to_update, updated_property_value, member_to_update)

	name_cmd = "UPDATE members SET name = ? WHERE name = ?"
	phone_cmd = "UPDATE members SET phone = ? WHERE name = ?"
	eggs_cmd = "UPDATE members SET eggs = ? WHERE name = ?"
	size_cmd = "UPDATE members SET size = ? WHERE name = ?"
	location_cmd = "UPDATE members SET location = ? WHERE name = ?"

	case property_to_update
	when 'name'
		cmd = name_cmd
	when 'phone'
		cmd = phone_cmd
	when 'eggs'
		cmd = eggs_cmd
	when 'size'
		cmd = size_cmd
	when 'location'
		cmd = location_cmd
	end

	db.execute(cmd, [updated_property_value, member_to_update])

	# db.execute(update_member_cmd, [property_to_update, updated_property_value, member_to_update])
end

# =========================================================================================


# Display user options
puts "What would you like to do today:"
puts "To DISPLAY members' info: type 'display'."
puts "To ADD a member: type 'add'."
puts "To UPDATE a member's info: type 'update'."
puts "To DELETE a member: type 'delete'."
choice = gets.chomp

# UI case statement to execute desired actions
case choice
when 'add'

	puts "Member's name:"
	new_member = gets.chomp

	puts "Enter #{new_member}'s phone number as only digits:"
	new_member_number = gets.chomp.to_i

	puts "Enter 'true' if #{new_member} would like to add eggs, otherwise 'false':"
	new_member_eggs = gets.chomp

	puts "Enter size of share: 'full' or 'half':"
	gets.chomp == "full" ? new_member_size = 1 : new_member_size = 2

	puts "Enter location of pickup: type 'farm' or 'market':"
	gets.chomp == "farm" ? new_member_location = 1 : new_member_location = 2

	# call methods to create new member
	create_member(db, new_member, new_member_number, new_member_eggs, new_member_size, new_member_location)
	# display all members
	display_members(db)

when 'display'

	display_members(db)

when 'delete'
	display_members(db)

	puts "Who would you like to delete?"
	member_to_delete = gets.chomp

	# call delete method
	delete_member(db, member_to_delete)
	# display update members
	display_members(db)

when 'update'
	display_members(db)

	puts "Who would you like to update?"
	member_to_update = gets.chomp

	puts "What would you like to update ('name', 'phone', 'eggs', 'size', 'location' for pick-up)?"
	property_to_update = gets.chomp

	case property_to_update
	when 'eggs'
		puts "true or false:"
		gets.chomp == 'true' ? updated_property_value = 'true' : updated_property_value = 'false'
	when 'location'
		puts "farm or market:"
		gets.chomp == 'farm' ? updated_property_value = 1 : updated_property_value = 2
	when 'size'
		puts "full or half:"
		gets.chomp == 'full' ? updated_property_value = 1 : updated_property_value = 2
	else
		puts "What should #{property_to_update} be updated to?"
		updated_property_value = gets.chomp
	end

	# call update method
	update_member(db, property_to_update, updated_property_value, member_to_update)
	# display updated member table
	display_members(db)
end




		







