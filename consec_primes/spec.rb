require "./consec_primes"

describe ConsecPrime do
  
  describe "#find_prime" do
    my_cutoff = ConsecPrime.new(100)

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

  describe "#check_primes" do
    it "should check if a given number is a prime" do

    end
  end

end