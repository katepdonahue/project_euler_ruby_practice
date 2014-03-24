require './binary_sort'

# Given an array of characters, sort them by the number 
# of 1's in the ascii 8-bit binary version from highest to lowest

describe Array, '#binary_sort' do
  
  it "should sort correctly" do
    expect(["a","o", "e", "z", "A"].binary_sort).to eq(["o", "z", "e", "a", "A"])
  end

end