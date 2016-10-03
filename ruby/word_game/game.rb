#I can't figure this out at all, I've spent too much time staring at it so I am done
#I look forward to any notes you can give me, I have started from scratch a few times,
#There appears to be a big piece I am missing but I cannot find it, thanks for any help in advance



=beginclass WordGame

	attr_accessor :hidden, :final_word, :counting

	def initialize
		@final_word = correct_word
		@guesscount = 0
		@all_guesses = []
		@guess_status = false
		@hidden = hidden_array
		@counting = guess_letter
		@letter = guess_please
	end
	
	def correct_word
		puts 'User 1, word please'
		word = gets.chomp
		word_arr = word.split('')
		return word_arr
	end
	
	
	def hidden_array
		hidden = []
		@final_word.length.times {hidden << "_"}
		return hidden
	end
	
	def guess_please
		"User 2, please submit a guess"
		letter = gets.chomp
		return letter
	end
	
	def guess_letter
		@letter
		@final_word.length.times do |idx|
			if @final_word[idx] == @letter
				@hidden[idx] = @letter
			end
		end
		return @hidden
	end
		
end


game = WordGame.new
game.correct_word
game.guess_please
game.guess_letter
=end
class WordGame

	attr_accessor :guess, :word

	def initialize
		@word = Array.new
		@guesscount = 0
		@guess = Array.new
		@guess_status = false
		@word.length.times {@guess << "_"}
	end
	
	def correct_word(word)
		@word = word.split('')
	end
	
	def guess_letter
		@guess = []
		@word.length.times {@guess << "_"}
		until @guess == @word
			puts "guess a letter!"
			letter = gets.chomp
			if @word.include? letter
				spot = @word.index(letter)
				@guess.insert(spot, letter)
				@guess.delete_at(spot + 1)
				p @guess.join('')
			elsif
				puts 'Wrong! Guess again.'
				letter = gets.chomp
			end
			@guesscount += 1
			if @guesscount > @word.length * 2
				puts 'You are out of guesses :('
				break
			end 
			
				
		end
		puts "it took #{@guesscount} guesses"
	end
	

end

game = WordGame.new
game.correct_word('martin')
game.guess_letter
