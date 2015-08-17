class HelloWorld
  def self.hello(*name)
    name[0] ||= "world"
    "Hello, #{name[0]}!"
  end
end
