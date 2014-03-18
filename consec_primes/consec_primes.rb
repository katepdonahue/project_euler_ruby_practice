require 'debugger'

class ConsecPrime
  attr_reader :cutoff
  attr_accessor :primes

  def initialize(cutoff)
    @cutoff = cutoff
    @primes = [2]
  end

  def find_primes
    next_num = primes[-1] + 1
    (next_num...cutoff).each do |int|
      if is_prime?(int)
        primes << int
      end
    end
    primes
  end

  def sum_primes
    sum = 0
    best = 0
    primes.each do |prime|
      sum += prime
      if sum >= cutoff
        break
      end
      if self.is_prime?(sum)
        best = sum
      end
    end
    best
  end

  def is_prime?(num)
    is = true
    primes.each do |prime|
      break if num <= prime
      if num%prime == 0
        is = false
        break
      end
    end
    is
  end

end