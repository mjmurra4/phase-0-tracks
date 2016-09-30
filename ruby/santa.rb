class Santa

	attr_reader :name, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
		cookie
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reindeer)
		reindeer_i = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(reindeer_i)
		@reindeer_ranking << reindeer
	end



end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
 # santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

random_gender = example_genders.sample
random_ethnicity = example_ethnicities.sample
santa_age = rand(140)

puts "Our Santa is #{random_gender}, #{random_ethnicity} and #{santa_age} years old."



