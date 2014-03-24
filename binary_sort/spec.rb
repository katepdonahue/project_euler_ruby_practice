require './binary_sort'

# Given an array of characters, sort them by the number 
# of 1's in the binary version from highest to lowest

describe Array, '#binary_sort' do
  
  it "should sort correctly" do
    expect(["a", "c", "o", "e", "z", "A"]).to eq(["A", "a", "c", "e", "z", "o"])
  end

end