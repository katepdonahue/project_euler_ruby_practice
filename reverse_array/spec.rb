require './reverse_array'

# Write a function to reverse an array of characters in place.
# "In place" means "without creating a new string in memory."

describe Array, '#my_reverse' do
  
  it "should reverse an array of even elements" do
    expect([0, 3, nil, 6].my_reverse).to eq([6, nil, 3, 0])
  end
  it "should reverse an array of odd elements" do
    expect([0, 3, 5].my_reverse).to eq([5, 3, 0])
  end
  it "should not break when array has only one element" do
    expect([0].my_reverse).to eq([0])
  end

end