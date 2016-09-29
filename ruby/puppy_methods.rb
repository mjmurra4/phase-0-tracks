class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	puts 'Woof!' * x
  	x
  end

  def roll_over
  	puts '*rolls over*'
  end

  def dog_years(x)
  	puts x * 7
  	x
  end

  def paw(treat)
  	if treat == 'yes'
  		puts '*raises paw*'
  	else
  		puts '*sleeps*'
  	end
  end
end

spot = Puppy.new
spot.paw('brocolli')

