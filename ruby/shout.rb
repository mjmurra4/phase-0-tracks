#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
# def self.yell_happily(words)
#    words + "!!!" + " :)" + "Woot!"
#  end
#
#end
#
#p Shout.yell_angrily('words')
#p Shout.yell_happily('words')

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

 def yell_happily(words)
    words + "!!!" + " :)" + "Woot!"
  end

end

class Trump
	include Shout
end

class Kool_Aid_Man
	include Shout
end

donald = Trump.new
p donald.yell_angrily('WRONG')

red = Kool_Aid_Man.new
p red.yell_happily('Oh Yeah')