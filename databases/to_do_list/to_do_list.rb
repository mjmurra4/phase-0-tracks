require 'sqlite3'

list = SQLite3::Database.new("list.db")

def add_activity(list, activity, date)
	list.execute("INSERT INTO list (activity, activity_date) VALUES (?, ?)", [activity, date])
end

def delete_activity(list, number)
	list.execute("DELETE FROM list WHERE id = #{number}")
end

def show_list(list)
	full_list = list.execute("SELECT * FROM list")
	full_list.each do |activities|
		puts "item #{activities[0]} is to #{activities[1]} by #{activities[2]}"
	end
end

input = ''

until input =="exit"
	puts "What would you like to do: add task, remove task or see list? (type exit to leave)"
	input = gets.chomp
if input == "add task"
	puts "Please give me the activity."
	activity = gets.chomp
	puts "And the day or time you would like it completed by"
	date = gets.chomp
	add_activity(list, activity, date)
elsif input == "remove task"
	show_list(list)
	puts "What is the number of the item you would like to drop?"
	number = gets.chomp
	delete_activity(list, number)
elsif input == "see list"
	show_list(list)
elsif input != "exit"
	puts "Sorry I don't understand"
end
end




