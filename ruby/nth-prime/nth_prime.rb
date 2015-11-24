require 'pp'

class Prime
  def nth (number)
    throw 'prime is not possible' unless  number >= 1
    prime_candidate = 2
    primes = Array.new
    while primes.length < number
      primes.push(prime_candidate) if prime?(prime_candidate)
      prime_candidate += 1
    end
    primes[number -1]
  end

  def prime?(x)
    return false if x < 2
    2.upto(x - 1) do |n|
      return false if (x % n).zero?
    end
    true
  end
end
