require 'debugger'

class Array

  def binary_sort
    self.sort_by{|char| char.binary_ones}.reverse
  end

end

class String

  def binary_ones
    num = self.unpack('b*')[0].to_i(2)
    answer = 0
    (0..7).to_a.reverse.each do |i|
      if num - 2**i >= 0
        num -= 2**i
        answer += 1
      end
    end
    answer
  end


end