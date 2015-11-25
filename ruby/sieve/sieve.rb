class Sieve
  attr_reader :limit
  private :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= sieve 
  end

  private

  def sieve 
    range = (2..limit).to_a
    range.each{ |candidate|
      range.delete_if { |number| number % candidate == 0 and number > candidate }
    } 
  end

end
