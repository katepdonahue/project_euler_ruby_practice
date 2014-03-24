require 'debugger'

class Array

  def binary_sort
    sorted_hash = {}
    self.each  do |char|
      sorted_hash[char] = char.unpack('b*')[0].to_i(2)
    end
    sorted_hash
  end

end