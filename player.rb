class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 6
  end

  def lose_a_life
    if @lives !=0
    @lives -=1
    end

  end

  def lives_at_zero_check
    if @lives>0
      return true
    else
      return false
    end
  end
end
