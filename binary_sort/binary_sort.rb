require 'debugger'

class Array

  def binary_sort
    self.map do |char|
      char.unpack('b*')[0].to_i
    end
  end

end