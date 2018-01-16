
def Player
  attr_accessor :name
  def initialize (name, lives, points)
    @name = name
    @lives = lives
    @points = points
  end

  def add_point
    @point += 1
  end

  def lose_life
    @lives -= 1
  end
  
end
