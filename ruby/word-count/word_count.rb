class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    seen = Hash.new(0);
    @phrase.downcase.scan(/\w+(?:'t)?/) { |s| 
      seen[s] = seen[s] + 1; 
    }
    seen 
  end

end
