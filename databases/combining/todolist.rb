
require 'sqlite3'

$db = SQLite3::Database.new("list.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list (
		id INTEGER PRIMARY KEY,
		entry VARCHAR(255)
	)
SQL

$db.execute(create_table_cmd);

list_name = "list"


def print_list(list)
	puts list_count_string(list)

	arr = $db.execute("SELECT * from #{list}")
	arr.each do |row|
		puts "- #{row[1]}"
	end
end

def process_addition(entry, list)

	add_to_list(entry, list)
	puts "'#{entry}' was added. list count: #{list_count(list)}"

end

def add_to_list(entry, list)
	$db.execute("INSERT INTO #{list} (entry) VALUES ('#{entry}')")
end

def process_removal(entry, list)

	old_count = list_count(list)
	remove_from_list(entry, list)
	new_count = list_count(list)

	if old_count != new_count
		puts "'#{entry}' successfully removed. list count: #{list_count(list)}"
	else
		err "'#{entry}' not found!"
	end

end

def remove_from_list(entry, list)
	$db.execute("DELETE FROM #{list} WHERE entry='#{entry}';")
end

def process_clearance(list)

	clear_list(list)
	puts "list '#{list}' was cleared. list count: #{list_count(list)}"

end

def clear_list(list)
	$db.execute("DELETE FROM #{list};")
end

def list_count_string(list)
	count = list_count(list)
	"#{count} Item" + ( count == 1 ? "" : "s" )
end

def list_count(list)
	$db.execute("SELECT COUNT(*) FROM #{list}")[0][0]
end



def help_with(keyword)
	puts case keyword
	when "view"
		puts "This command will output the existing list to the screen"
	when "add"
		puts "Anything following this command will be added to the list"
	when "complete"
		puts "Anything following this command will removed from the list"
	when "remove"
		puts "Anything following this command will removed from the list"
		puts "Optionally too, entering 'remove all' will clear the list"
	when "quit", "exit"
		puts "This command exits the program"
	else
		puts "#{keyword} keyword not found."
	end
end

def nl
	puts ""
end

def err(str)
	puts "ERROR: " + str
end



puts "Hello! Welcome to todolist."

puts "You currently have " + list_count_string(list_name) + " in your list." if list_count(list_name) != 0 

puts "commands: view, add *, complete *, remove *, help, quit"
puts "Please enter a command to get started "#('help' for options)"

loop do

	input = ""
	loop do # input validation loop
		input = gets.chomp.strip
		break if input != ""
		puts "Please enter valid input"
	end
	
	parsed = input.split
	first = parsed[0]
	rest = parsed[1..-1].join(' ')
	nl
	if input == "view"
		print_list(list_name)
	elsif first == "add"
		process_addition(rest, list_name)
	elsif first == "complete"
		process_removal(rest, list_name)
	elsif first == "remove"
		if rest == "all"
			process_clearance(list_name)
		else
			process_removal(rest, list_name)
		end
	elsif input == "help"
		puts "commands: print, add *, complete *, remove *, help, quit"
		puts "type 'help' followed by a keyword to find out more!"
	elsif first == "help"
		help_with(rest)
	elsif input == "quit" || input == "exit"
		puts "Goodbye! Come again."
		break
	else
		puts "Command not recognized.."
	end
	
	nl
	puts "Please enter another command "

end




	



