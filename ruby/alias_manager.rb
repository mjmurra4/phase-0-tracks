# Algorithm will cut off the first letter of your
# first and last name, and will replace the other letters
# according to the prompt.
# I have spent over 8 hours on this and cannot figure out why it
# cuts off the first letter

def special_editor(x)
	if x == 'z'
		x = 'b'
	elsif x == 'd'
		x = 'f'
	elsif x == 'h'
		x = 'j'
	elsif x == 'n'
		x = 'p'
	elsif x == 't'
		x = 'v'
	end
end

def vowel_editor(x)
	if x == 'a'
		x = 'e'
	elsif x == 'e'
		x = 'i'
	elsif x == 'i'
		x = 'o'
	elsif x == 'o'
		x = 'u'
	elsif x == 'u'
		x = 'a'
	end
end

def consonant_editor(x)
	x = x.next
end
	
puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp


first_arr = first_name.split('')

last_arr = last_name.split('')


final_first = []
final_last = []
vowels = ['a', 'e', 'i', 'o', 'u']
consonants_r = ['b', 'c', 'f', 'g','j','k','l','m','p','q','r','s','v','w','x','y']
consonants_s = ['z', 'd', 'h', 'n','t']

first_arr.each do |letter|
	if vowels.include? letter
		final_first << vowel_editor(letter)
	elsif consonants_r.include? letter
		final_first << consonant_editor(letter)
	elsif consonants_s.include? letter
		final_first << special_editor(letter)
	end
		
end

last_arr.each do |letter|
	if vowels.include? letter
		final_last << vowel_editor(letter)
	elsif consonants_r.include? letter
		final_last << consonant_editor(letter)
	elsif consonants_s.include? letter
		final_last << special_editor(letter)
	end
		
end


final_full = [final_first, " ", final_last].reverse.flatten

loop do
	puts "have another name? 'type quit to exit"
	puts "What is your first name?"
first_name = gets.chomp

break if first_name == 'quit'

puts "What is your last name?"
last_name = gets.chomp


first_arr = first_name.split('')

last_arr = last_name.split('')


final_first = []
final_last = []
vowels = ['a', 'e', 'i', 'o', 'u']
consonants_r = ['b', 'c', 'f', 'g','j','k','l','m','p','q','r','s','v','w','x','y']
consonants_s = ['z', 'd', 'h', 'n','t']

first_arr.each do |letter|
	if vowels.include? letter
		final_first << vowel_editor(letter)
	elsif consonants_r.include? letter
		final_first << consonant_editor(letter)
	elsif consonants_s.include? letter
		final_first << special_editor(letter)
	end
		
end

last_arr.each do |letter|
	if vowels.include? letter
		final_last << vowel_editor(letter)
	elsif consonants_r.include? letter
		final_last << consonant_editor(letter)
	elsif consonants_s.include? letter
		final_last << special_editor(letter)
	end
		
end


final_full = [final_first, " ", final_last].reverse.flatten

end

puts "Goodbye!"
