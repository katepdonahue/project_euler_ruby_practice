require 'debugger'

class ConsecPrime
  attr_reader :cutoff
  attr_accessor :primes

  def initialize(cutoff)
    @cutoff = cutoff
    @primes = [2]
  end

  def find_primes
    (3...cutoff).step(2).each do |int|
      primes << int if is_prime?(int)
    end
    primes
  end

  def sum_primes
    sum = 0
    best = 0
    primes.detect do |prime|
      sum += prime
      best = sum if is_prime?(sum) && sum < cutoff # second condition is just in case the last sum (the one that's too big) is prime
      sum >= cutoff
    end
    best
  end

  def is_prime?(num)
    primes.take_while{|prime| prime < num}.each do |prime|
      return false if num%prime == 0
    end
    true
  end

end

my_num = ConsecPrime.new(1000000)
my_num.find_primes
puts "Found the primes"
puts "There are #{my_num.primes.length} primes"
puts "The longest sum of consecutive primes is: #{my_num.sum_primes}"



