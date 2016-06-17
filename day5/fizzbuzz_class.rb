class Fizzbuzz
  def initialize(a, b)
    @a = a
    @b = b
  end
  attr_accessor :a, :b
  def calculate
    (1..100).each do |n|
      if n % @a == 0 && n % @b == 0
        puts "FizzBuzz"
      elsif n % @a == 0
        puts "Fizz"
      elsif n % @b == 0
        puts "Buzz"
      else
        puts n
      end
    end
  end

end
# require "fizzbuzz_class.rb"
#
# fizzbuzz_class(3, 5)
# fizzbuzz_class.calculate
