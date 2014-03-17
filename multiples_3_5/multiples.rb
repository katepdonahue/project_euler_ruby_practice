
class Multiple
  attr_reader :num1, :num2, :below

  def initialize(num1, num2, below)
    @num1 = num1
    @num2 = num2
    @below = below
  end

  def mults
    multiples = []
    (1...self.below).each do |int|
      multiples << int if int%num1 == 0 || int%num2 == 0
    end
    multiples
  end

  def sumult

  end

end