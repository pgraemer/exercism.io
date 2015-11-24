require 'pp'

class Bob
  def hey (text)
    return 'Fine. Be that way!' if (text =~ /\A\s*\z/)
    return 'Whoa, chill out!' if is_forcefully(text) 
    return 'Sure.' if is_question(text)
    return 'Whatever.'
  end

  private

  def is_question (text)
    return true if (text =~ /\?\z/)
    false
  end

  def is_forcefully (text)
    return true if (text =~ /\!/ && text == text.upcase)
    return true if (text == text.upcase && not(text =~ /\d/))
    false
  end

end
