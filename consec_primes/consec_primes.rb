require 'debugger'

class ConsecPrime
  attr_reader :below
  attr_accessor :primes

  def initialize(below)
    @below = below
    @primes = [2]
  end

  def find_primes
    next_num = primes[-1] + 1
    (next_num...below).each do |int|
      if is_prime?(int)
        primes << int
      end
    end
    primes
  end

  def sum_primes

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