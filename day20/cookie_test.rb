require "minitest/autorun"
require "./cookie.rb"
class CookieTest < Minitest::Test
require "./rectangle.rb"
require "./dog.rb"
  # def test_addition
  #   a = 1
  #   b = 2
  #   assert_equal(4, a + b)
  # end
  # def test_calorie_count
  #   c = Cookie.new
  #   c.sugar = 10
  #   c.flour = 15
  #   assert_equal(85, c.calorie_count)
  # end

  # def test_area
  #   a = Rectangle.new
  #   a.width = 10
  #   a.height = 20
  #   assert_equal(200, a.area)
  # end
  #
  # def test_square_false
    #Given: rectangle with the same length and height
  #   b = Rectangle.new
  #   b.width = 20
  #   b.height = 30
  #when : call is_square?
  #then:
  #   assert_equal(false, b.is_square?)
  # end

  def test_give_bone
    dog_1 = Dog.new
    dog_1.give_bone("big")
    dog_1.give_bone("big")
    dog_1.give_bone("big")
    dog_1.give_bone("big")
    assert_equal(3, dog_1.give_bone("small"))
  end

  def test_eat_bone
    dog_2 = Dog.new
    dog_2.give_bone("big")
    dog_2.give_bone("medium")
    assert_equal("medium", dog_2.eat_bone)
  end

  def test_bone_count
    dog_3 = Dog.new
    dog_3.give_bone("big")
    dog_3.give_bone("medium")
    # dog_3.give_bone("big")
    # dog_3.give_bone("medium")
    assert_equal(2, dog_3.bone_count)
  end
end
