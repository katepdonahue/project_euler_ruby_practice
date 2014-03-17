require "./consec_primes"

describe ConsecPrime do
  my_cutoff = ConsecPrime.new(100)
  
  describe "#find_prime" do

    it "it should find the next prime up and add it to primes array" do
      expect(my_cutoff.find_prime).to eq([2])
    end
    it "it should find the next prime up and add it to primes array" do
      expect(my_cutoff.find_prime).to eq([2, 3])
    end
    it "it should find the next prime up and add it to primes array" do
      expect(my_cutoff.find_prime).to eq([2, 3, 5])
    end
  end

  describe "#sum_primes" do
    it "should sum the consecutive primes until it reaches your number, return the previous result" do

    end
  end

  describe "#is_prime?" do
    it "should return true if a given number is a prime" do
      my_cutoff.primes = [2]
      expect(my_cutoff.is_prime?(3)).to eq(true)
    end
    it "should return false if a given number is not a prime" do
      my_cutoff.primes = [2, 3, 5, 7]
      expect(my_cutoff.is_prime?(8)).to eq(false)
    end
  end

end