require "./consec_primes"

describe ConsecPrime do
  
  describe "#find_primes" do
    number = ConsecPrime.new(15)
    it "it should find the primes below your number" do
      expect(number.find_primes).to eq([2, 3, 5, 7, 11, 13])
    end
  end

  describe "#sum_primes" do
    number = ConsecPrime.new(100)  
    number.find_primes
    it "should sum the consecutive primes until it reaches your number, return the previous result" do
      expect(number.sum_primes).to eq(41)
    end
  end

  describe "#is_prime?" do
    number = ConsecPrime.new(15)
    it "should return true if a given number is a prime" do
      expect(number.is_prime?(3)).to eq(true)
    end
    it "should return false if a given number is not a prime" do
      expect(number.is_prime?(16)).to eq(false)
    end
  end

end