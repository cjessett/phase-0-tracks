# CSA member manager

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
	)
SQL

# create location table command
create_locations_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS locations (
		id INTEGER PRIMARY KEY,
		location VARCHAR(255)
	)
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
	)
SQL

# create tables
db.execute(create_sizes_cmd)
db.execute(create_locations_cmd)
db.execute(create_members_cmd)



