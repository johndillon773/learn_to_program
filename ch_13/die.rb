class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(num)
    if num > 0 && num < 7
      @number_showing = num
    end
  end

end

die = Die.new

puts die.showing
puts die.roll
puts die.showing
puts die.cheat(6)
puts die.showing