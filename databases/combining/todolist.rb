
require 'sqlite3'

$db = SQLite3::Database.new("list.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list (
		id INTEGER PRIMARY KEY,
		entry VARCHAR(255),
		done BOOLEAN
	)
SQL

$db.execute(create_table_cmd);

list_name = "list"



def print_list(list, modifier="all")
	query = "SELECT * from #{list}"

	case modifier
	when "all"
		query = query + ";"
	when "done"
		query = query + " WHERE done='true';"
	when "todo"
		query = query + " WHERE done='false';"
	else
		err "no view of type #{modifier}"
		return
	end

	arr = $db.execute(query)

	puts "#{arr.length} " + plural("Item", arr.length)

	arr.each do |row|
		puts "[" + (row[2] == "true" ? "+" : " ") + "] #{row[1]}"
	end
end

def process_addition(entry, list)

	if entry != ""
		add_to_list(entry, list)
		puts "'#{entry}' was added. list count: #{list_count(list)}"
	else
		err "not a valid entry!"
	end

end

def add_to_list(entry, list)
	$db.execute("INSERT INTO #{list} (entry, done) VALUES ('#{entry}', 'false')")
end

def process_completion(entry, list)

	result = $db.execute("SELECT * from #{list} WHERE entry='#{entry}';")

	if result.length > 0
		complete_in_list(entry, list)
		puts "'#{entry}' is now checked off!"
	else
		err "'#{entry}' not found!"
	end

end

def complete_in_list(entry, list)
	$db.execute("UPDATE #{list} SET done='true' WHERE entry='#{entry}';")
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
	puts "'#{list}' was cleared. list count: #{list_count(list)}"

end

def clear_list(list)
	$db.execute("DELETE FROM #{list};")
end

def process_clean(list)

	old_count = list_count(list)
	clean_list(list)
	new_count = list_count(list)
	diff = old_count - new_count

	puts "clean finished. #{diff} " + plural("item", diff) + " removed"

end

def clean_list(list)

	$db.execute("DELETE FROM #{list} WHERE done='true';")

end

def list_count_string(list)
	count = list_count(list)
	"#{count} " + plural("Item", count)
end

def list_count(list)
	$db.execute("SELECT COUNT(*) FROM #{list}")[0][0]
end

def plural(word, amount)
	word + ( amount == 1 ? "" : "s" )
end



def help_with(keyword)
	case keyword
	when "view"
		puts "view [all|done|todo]"
		puts "This command will output the list to the screen as specified"
	when "add"
		puts "Anything following this command will be added to the list"
	when "complete"
		puts "Anything following this command will removed from the list"
	when "clean"
		puts "This command removes all completed entries"
	when "remove"
		puts "Anything following this command will removed from the list"
		puts "Optionally too, entering 'remove all' will clear the list"
	when "reset"
		puts "This command erases all local list data. WARNING: cannot be undone!"
	when "quit", "exit"
		puts "This command exits the program"
	else
		puts "#{keyword} keyword not found."
	end
end

define_method :reset do |list|
	$db.execute("DROP TABLE #{list}");
	$db.execute(create_table_cmd);
end

def nl
	puts ""
end

def err(str)
	puts "ERROR: " + str
end



puts "Hello! Welcome to todolist."

if list_count(list_name) != 0
	count = list_count(list_name)
	puts "You currently have #{count} " + plural("item", count) + " in your list."
end

puts "commands: view, add *, complete *, clean, remove *, help, reset, quit"
puts "Please enter a command to get started "#('help' for options)"

loop do

	input = ""
	loop do # input validation loop
		print "> "
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
	elsif first == "view"
		print_list(list_name, rest)
	elsif first == "add"
		process_addition(rest, list_name)
	elsif first == "complete"
		process_completion(rest, list_name)
	elsif first == "clean"
		process_clean(list_name)
	elsif first == "remove"
		if rest == "all"
			process_clearance(list_name)
		else
			process_removal(rest, list_name)
		end
	elsif input == "help"
		puts "commands: view, add *, complete *, clean, remove *, help, reset, quit"
		puts "type 'help' followed by a keyword to find out more!"
	elsif first == "help"
		help_with(rest)
	elsif input == "reset"
		puts "..."
		reset(list_name)
		system "clear" or system "cls"
		puts "Local list formated. New list created!"
		puts "commands: view, add *, complete *, clean, remove *, help, reset, quit"
		puts "Please enter a command to get started "#('help' for options)"
		redo
	elsif input == "quit" || input == "exit"
		puts "Goodbye! Come again."
		break
	else
		puts "Command not recognized.."
	end
	
	nl
	puts "Please enter another command "

end




	



