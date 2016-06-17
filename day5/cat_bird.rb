load "HelperMethods.rb"
class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

end

class Cat < Animal
  attr_accessor :catched
  # @catched == false
  include HelperMethods
  def catch(bird)
    @catch_success = difficulty(2)
    if @catch_success == bird.dodge
      puts "#{self.name} Catched #{bird.name} !!"
      puts "#{self.name} ate #{bird.name} !!"
      # @catched = true
      # eat(bird)
      #p @catched
    else
      puts "#{bird.name} Escaped!!"
      # @catched = false
      #p @catched
    end
  end

  # def eat(bird)
  # #  p @catched
  #   if @catched
  #     puts "#{self.name} is eating #{bird.name}"
  #   else
  #     puts "Poor guy doesn't have a bird to eat"
  #   end
  # end
end

class Bird < Animal
  include HelperMethods
  def dodge
    return difficulty(1)
  end
end
