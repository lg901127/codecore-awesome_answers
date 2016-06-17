require "minitest/autorun"
require "./student.rb"
class StudentTest < Minitest::Test
  def test_initialize
    assert_raises(ArgumentError) { Student.new }
  end

  def test_full_name
    assert_equal("James Bond", Student.new("James", "Bond", "100").full_name)
  end

  def test_grade
    assert_equal("A", Student.new("James", "Bond", 100).grade)
    assert_equal("D", Student.new("James", "Bond", 0).grade)
  end
end
