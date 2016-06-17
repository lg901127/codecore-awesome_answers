class Dog
  def initialize(color, breed)
    @color = color
    @breed = breed
    @bone_pile = []
  end

  def take(bone)
    if @bone_pile.count > 2
      puts "I have too many bones"
    else
      @bone_pile << bone
    end
  end

  def eat
    if @bone_pile.empty?
      puts "I dun have a bone!"
    else
      bone_eaten = @bone_pile.pop
      puts "yummy! I ate #{bone_eaten.size} bone!"
    end
  end
end

class Bone
  attr_accessor :size
  def initialize(size)
    @size = size
  end
end
