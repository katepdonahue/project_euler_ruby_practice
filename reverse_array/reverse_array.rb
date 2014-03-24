require 'debugger'

class Array

  def my_reverse
    last = self.length - 1
    (0..last).each do |i|
      self[self.length] = self[last-i]
    end
    self[last+1..-1]
  end

end