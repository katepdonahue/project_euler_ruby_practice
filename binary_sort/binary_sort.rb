require 'debugger'

class Array

  def binary_sort
    sorted_hash = {}
    self.each  do |char|
      sorted_hash[char] = [char.unpack('b*')[0].to_i(2), 0]
      if sorted_hash[char][0] - 128 >= 0
        sorted_hash[char][0] -= 128
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 64 >= 0
        sorted_hash[char][0] -= 64
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 32 >= 0
        sorted_hash[char][0] -= 32
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 16 >= 0
        sorted_hash[char][0] -= 16
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 8 >= 0
        sorted_hash[char][0] -= 8
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 4 >= 0
        sorted_hash[char][0] -= 4
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 2 >= 0
        sorted_hash[char][0] -= 2
        sorted_hash[char][1] += 1
      end
      if sorted_hash[char][0] - 1 >= 0
        sorted_hash[char][0] -= 1
        sorted_hash[char][1] += 1
      end
    end
    sorted_array = []
    sorted_hash.sort_by{|char, array| array[1]}.reverse.each do |nest_array|
      sorted_array << nest_array[0]
    end
    sorted_array
  end

end