require "./consec_primes"

describe ConsecPrime do
  cutoff = ConsecPrime.new(15)
  
  describe "#find_primes" do
    it "it should find the primes below your number" do
      expect(cutoff.find_primes).to eq([2, 3, 5, 7, 11, 13])
    end
  end

  describe "#sum_primes" do
    it "should sum the consecutive primes until it reaches your number, return the previous result" do

    end
  end

  describe "#is_prime?" do
    it "should return true if a given number is a prime" do
      expect(cutoff.is_prime?(3)).to eq(true)
    end
    it "should return false if a given number is not a prime" do
      expect(cutoff.is_prime?(16)).to eq(false)
    end
  end

end