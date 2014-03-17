class ConsecPrime
  attr_reader :below, :primes

  def initialize(below)
    @below = below
    @primes = []
  end

  def find_prime
    if primes.length > 0
      next_num = primes[-1] + 1
      (next_num...below).each do |int|
        if is_prime?(int)
          result = int
          break
        end
      end
    else
      result = 2
    end
    primes << result
  end

  def sum_primes

  end

  def is_prime?(num)
    is_it = true
    primes.each do |prime|
      if num%prime == 0
        is_it = false
        break
      end
    end
    is_it
  end

end