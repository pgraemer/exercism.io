class Grains
  def self.square (i)
    return 2 ** (i -1)
  end

  def self.total
    return square(65) - 1
  end
 
end
