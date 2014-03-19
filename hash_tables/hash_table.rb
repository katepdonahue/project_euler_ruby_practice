# How do you make a hash table?
# Assume you are given a method that creates a unique number when you give it a key
# How would you map that number so that you could find the correct value for the key?

# Imagine each value is stored in a bucket, then write a method to get a value
# given the number
# But because we are going to decide the number of buckets when we write the class
# the number of buckets won't change based on the number of elements in the hash, 
# so it is possible that with a large hash there could be multiple values in each bucket
# So we also need to store the key in the bucket 
# so that we get the right value when there are duplicates in the same bucket

class HashTable
  attr_reader :buckets

  def initialize
    @buckets = []
  end

  def set(k, v)
    index = get_bucket(k)
    buckets[index] ||= []
    buckets[index] << [k, v]
    return v
  end

  def get(k)
    bucket_array = buckets[get_bucket(k)]
    bucket_array ||= []
    bucket_array.each do |kv_array|
      return kv_array[1] if kv_array[0] == k
    end
  end

  def get_bucket(key)
    pretend_magic(key)%100
  end

  def pretend_magic(key) # this is a fake version of the magical hash table
    key.to_sym.object_id # method that returns a unique random number for each input     
  end


end