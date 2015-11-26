require 'pp'

class Binary
  VERSION = 1
  attr_reader :bits
  private     :bits
  
  def initialize(binary)
    raise ArgumentError if binary[/[^1|0]/]
    @bits = binary.scan(/[1|0]/).map { |bit| bit.to_i }
  end

  def to_decimal
    @decimal ||= convert
  end

  private

  def convert
    exp = bits.count - 1
    @bits.inject(0) { |decimal, bit|
      decimal += bit * (2 ** exp)
      exp -= 1
      decimal
    }
  end

end
