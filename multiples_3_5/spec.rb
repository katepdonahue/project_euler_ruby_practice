require './multiples.rb'

describe Multiple do

  describe '#mults' do
    it "should find all the multiples of 3 and 5 below 10" do
      expect(Multiple.new(3, 5, 10).mults).to eq([3, 5, 6, 9])
    end
  end

  describe '#sumult' do
    it "should sum all the multiples of 3 and 5 below 10" do

    end
  end

end