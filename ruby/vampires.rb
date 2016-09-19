puts "How many employees would you like to enroll?"
employees = gets.chomp.to_i

until 0 == employees
	puts "What is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	
	puts "What year were you born?"
	year = gets.chomp.to_i
	
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
	garlic = gets.chomp
	
	puts "Would you enroll in the company's health insurance? (yes or no)"
	insurance = gets.chomp
	
	puts "Please list any allergies; if none type 'none'; type 'done' when you are finished"
	allergies = gets.chomp
	if "sunshine" == allergies
	elsif "none" == allergies
	else
		until "done" "sunshine" == allergies
			puts "List allergies"
			allergies = gets.chomp
			if "done" == allergies
				break
			elsif "sunshine" == allergies
				break
			else
			end
			allergy = 1
		end
	end
	
	
	
	if allergies == "sunshine"
		puts "Probably a vampire"
	elsif name == "Drake Cula"
		puts "Definitely a vampire"
	elsif name == "Tu Fang"
		puts "Definitely a vampire"
	elsif ((2016 - year) != age) && (garlic == "no" && insurance == "no")
		puts "Almost certainly a vampire"
	elsif ((2016 - year) != age) && (garlic == "no" || insurance == "no")
		puts "Probably a vampire"
	elsif ((2016 - year) == age) && (garlic == "yes" || insurance == "yes")
		puts "Probably not a vampire"
	else
		puts "Results inconclusive"
	end
	employees -= 1
	
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end




