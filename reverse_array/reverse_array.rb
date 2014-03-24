require 'debugger'

class Array

  def my_reverse
    last = self.length - 1
    (0..last/2).each do |i|
      self[i], self[last-i] = self.values_at(last-i, i)
    end
    self
  end

end