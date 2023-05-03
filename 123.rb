# 在ruby 裡面並沒有屬性所以沒辦法直接去取用變數，而是要撰寫方法才可以取用˙

class Cat 
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

  def initialize(name , age)
    @name = name
    @age = age
  end

  # def name getter
  #   @name
  # end

  # def name=(new_name) setter
  #   @name = new_name
  # end
end

kitty = Cat.new('tim' , 18)
p kitty.name
p kitty.name = 'oli'
