class Robot
  attr_accessor :name

  def initialize
    init_name
  end

  def reset
    init_name
  end
  
  private

  def random_name 
    (("A".."Z").to_a.sample(2) + (1..9).to_a.sample(3)).join
  end

  def init_name
    begin
      @name = random_name
    end while not @names.include?(@name)
    @names.push(@name)
  end

end
