# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create method that turns string into hash
  # key is item, value is quantity
full_list = nil

def hash_maker(items)
	grocery_list = Hash.new(0)
	items.split(' ').each { |item| grocery_list[item] += 1 }
	return grocery_list
end

full_list = hash_maker("carrots apples cereal pizza pizza")
p full_list


  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  # output: hash goes here

# Method to add an item to a list
# input: item name and optional quantity
# steps: store output of existing method/list in variable
#        arguments are: list, item, quantity 
# output: updated hash
def add_grocery(list, item, quantity = 1)
	list[item] = quantity
end

add_grocery(full_list, 'oreos', 3)
p full_list





# Method to remove an item from the list
# input: item to be removed
# steps: arguments: list, and item to be removed
#        use .delete to remove item from list
# output: updated full list
def remove_item(list, item)
	list.delete(item)
end

remove_item(full_list, 'carrots')
p full_list

# Method to update the quantity of an item
# input: list, item, updated quantity
# steps: arguments: list, item, new quantity
#        set list item to updated quantity
# output: updated full_list
def update_quantity(list, item, quantity)
	list[item] = quantity
end

update_quantity(full_list, 'oreos', 5)
p full_list

# Method to print a list and make it look pretty
# input: full_list hash
# steps: use .each to print items with appropriate quantities
# output: pretty grocery list string

def pretty_list(list)
	list.each {|item, quantity| puts "You need #{quantity} #{item}"}
end

pretty_list(full_list)

# I learned how helpful pseudocode can really be if done properly. 
# I sometimes just try and dive into a task without planning properly beforehand 
# but that is just not an effective strategy in most of these challenges. 
# Taking the time to pseudocode has been very helpful.


# The hash allows you to link a key with a value, in this case the item with the quantity.
# An array doesn't allow for that, which makes using hashes vital in this challenge.


# A method returns a value

# In this challenge we passed hashes, strings and intergers as arguments into the method.

# By using similar, specific arguments we were able to pass that information between methods.

# learning how to pass information though methods was helpful, although it still confuses me at times.
# For me, using blocks got really solidfied for me, it was something I wasn't very confident in last week, and now I feel much more confident with them.

