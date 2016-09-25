# Write the title of the form
# Create hash for responses to be deposited
# Ask designer for information by type
# Log each response to the appropriate key symbol
# Print responses
# Ask if they would like to make a correction, if no, type "none"
# Print updated version of the hash

client_info = {}

puts "Hello! This form will help you track information about your client."

puts "What is the client's name?"
client_info[:client_name] = gets.chomp

puts "What is the client's age?"
client_info[:client_age] = gets.chomp

puts "How many children does your client have?"
client_info[:client_kids] = gets.chomp

puts "What decor theme does the client want?"
client_info[:client_decor] = gets.chomp

puts "You selected:"
puts "Client name:"
puts client_info[:client_name]
puts "Client age:"
puts client_info[:client_age]
puts "Client children:"
puts client_info[:client_kids]
puts "Choice of decor:"
puts client_info[:client_decor]

puts "Is this information correct? (yes or no)"
input = gets.chomp
if input == "yes"
	puts "Great! Thank you for tracking your client information"
elsif input == "no"
	puts "What input would you like to change? (name, age, children, decor)"
	change = gets.chomp
		if change == "name"
			puts "What is the new name?"
			client_info[:client_name] = gets.chomp
		elsif change == "age"
			puts "What is the new name?"
			client_info[:client_age] = gets.chomp
		elsif change == "children"
			puts "What is the new name?"
			new_name = gets.chomp
			client_info[:client_kids] = gets.chomp
		elsif change == "decor"
			puts "What is the new name?"
			new_name = gets.chomp
			client_info[:client_decor] = gets.chomp
		end
	puts "Your updated form:"

puts "Client name:"
puts client_info[:client_name]
puts "Client age:"
puts client_info[:client_age]
puts "Client children:"
puts client_info[:client_kids]
puts "Choice of decor:"
puts client_info[:client_decor]
end