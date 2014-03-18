
class Multiple
  attr_reader :num1, :num2, :below

  def initialize(num1, num2, below)
    @num1 = num1
    @num2 = num2
    @below = below
  end

  def mults
    (1...self.below).to_a.delete_if {|int| int%num1 != 0 && int%num2 != 0}
  end

  def sumult
    self.mults.inject(:+)
  end

end

# find the project euler answer
puts Multiple.new(3, 5, 1000).sumult