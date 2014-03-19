require './hash_table'

describe HashTable do

  describe '#set' do
    my_hash = HashTable.new
    it "should return the value you added" do
      my_hash.stub(:pretend_magic => 0) # so I know where it will be added to buckets
      expect(my_hash.set("kate", "here")).to eq("here")
    end
    it "should add a k,v pair to the hash table" do
      expect(my_hash.buckets).to eq([[["kate", "here"]]])
    end
  end

  describe '#get' do
    my_hash2 = HashTable.new
    it "should get a value given the key" do
      my_hash2.set("sarah", "also here")
      expect(my_hash2.get("sarah")).to eq("also here")
    end
  end

  describe '#get_bucket' do
    my_hash3 = HashTable.new
    it "should return the magic number mod 100" do
      my_hash3.stub(:pretend_magic => 30021)
      expect(my_hash3.get_bucket("sarah")).to eq(21)
    end
    it "should always return the same bucket for the same key" do
      call1 = my_hash3.get_bucket("sarah")
      call2 = my_hash3.get_bucket("sarah")
      expect(call1).to eq(call2)
    end
  end


end