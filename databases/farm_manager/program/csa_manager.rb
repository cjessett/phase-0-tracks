# CSA member manager

=begin
1. Allow users to add members to database
2. Allow users to access(read) members info in database
3. Allow users to alter member info
4. Allow users to deletee members
=end

# require gems
require 'sqlite3'
require 'faker'

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

# add sizes and locations
db.execute("INSERT INTO sizes (size) VALUES (?), (?)", ["FULL"], ["HALF"])
db.execute("INSERT INTO locations (location) VALUES (?), (?)", ["FARM"], ["MARKET"])

# Display user options
puts "What would you like to do today:"
puts "To DISPLAY members' info: type 'display'."
puts "To ADD a member: type 'add'."
puts "To UPDATE a member's info: type 'update'."
puts "To DELETE a member: type 'delete'."
choice = gets.chomp

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


case choice
when 'add'

# Add members UI
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

	# call methods to create new member and display all members
	create_member(db, new_member, new_member_number, new_member_eggs, new_member_size, new_member_location)
	display_members(db)

when 'display'

	display_members(db)

when 'delete'

	
end




		







