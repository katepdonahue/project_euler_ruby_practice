require 'debugger'

class Array

  def binary_sort
    sorted_hash = {}
    self.each  do |char|
      sorted_hash[char] = [char.unpack('b*')[0].to_i(2), 0]
      (0..7).to_a.reverse.each do |i|
        if sorted_hash[char][0] - 2**i >= 0
          sorted_hash[char][0] -= 2**i
          sorted_hash[char][1] += 1
        end
      end
    end
    sorted_array = []
    sorted_hash.sort_by{|char, array| array[1]}.reverse.each do |nest_array|
      sorted_array << nest_array[0]
    end
    sorted_array
  end

end