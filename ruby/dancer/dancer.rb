class Dancer

	attr_reader :card

	def initialize(card)
		@card = []
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def wave
		"Hi Mom!"
	end

	def queue_dance_with(dancer)
		@card << dancer
	end

	def begin_next_dance
		c_dancer = @card.delete_at(0)
		"Now dancing with #{c_dancer}."
		
	end
end
