require 'pp'
class Array
  def accumulate(&block)
    self.each_with_index.each_with_object([]) { |(item, index), array|
      array[index] = block.(item)
    }
  end
end
