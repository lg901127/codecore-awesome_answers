class Dog
  attr_accessor :bones
MAX_BONE_COUNT = 3
  def initialize
    @bones = []
  end

  def give_bone(string)
    @bones << string if @bones.length < MAX_BONE_COUNT
    @bones.length
  end

  def eat_bone
    @bones.pop
  end

  def bone_count
    @bones.length
  end
end
