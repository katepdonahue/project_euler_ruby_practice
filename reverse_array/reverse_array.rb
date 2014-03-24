class Array

  def my_reverse
    new_array = []
    (0...self.length).each do |i|
      new_array[i] = self[-(i+1)]
    end
    new_array
  end

end