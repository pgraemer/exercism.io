class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end
  def to(num)
    (1...num).select { |n| @multiples.any? { |multiple| (n % multiple).zero? } }.reduce(0, :+)
  end
  def self.to(num) 
    new(3,5).to(num) 
  end
end
