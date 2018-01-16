
class MathQuestion
  attr_accessor :num1, :num2
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def get_answer
    num1 + num2
  end
end
