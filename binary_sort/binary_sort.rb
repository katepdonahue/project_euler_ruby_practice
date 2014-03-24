require 'debugger'

class Array

  def binary_sort
    self.map do |char|
      char.unpack('b*')
    end
  end

end