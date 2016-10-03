class Dancer

	def initialize(array)
		@array = array
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(dancer)
		@array << dancer
	end
end
