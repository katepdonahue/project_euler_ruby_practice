require './hash_table'

describe HashTable do
  my_hash = HashTable.new

  describe '#set' do
    it "should add a k,v pair to the hash table and return the value" do
      expect(my_hash.set("kate", "here")).to eq("here")
    end
  end

  describe '#get' do
    my_hash.set("sarah", "also here")
    it "should get a value given the key" do
      expect(my_hash.get("sarah")).to eq("also here")
    end
  end

  describe '#get_bucket' do
    it "should return the magic number mod 100" do
      my_hash.stub(:pretend_magic => 30021)
      expect(my_hash.get_bucket("sarah")).to eq(21)
    end
    it "should always return the same bucket for the same key" do
      call1 = my_hash.get_bucket("sarah")
      call2 = my_hash.get_bucket("sarah")
      expect(call1).to eq(call2)
    end
  end


end