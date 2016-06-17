# def generate(num_rows)
#     comb = []
#     current_row = 0
#     return [] if num_rows == 0
#     while current_row != num_rows
#         temp = []
#         (0..current_row).each do |element|
#             temp << comb.combination(element).count
#         end
#         comb << "a"
#         current_row += 1
#         print temp
#     end
# end

# generate(0)

class Cookie
  def initialize(sugar_amount)
    puts "about to create"
    @sugar = sugar_amount
  end
  attr_accessor :sugar
  def eat
    p "Eating the cookie"
  end

  def bake
    "Baking the cookie"
  end
end

class BritishColumbia
end

class Oreo < Cookie
  attr_accessor :filling_type
  def eat
    p "im eating oreo"
    super
  end
end
class Car
  def initialize(model, tye, capacity)
    @model = model
    @type = tye
    @capacity = capacity
  end
  # attr_accessor: model, type, capacity
  def self.max_speed
    return 200
  end
  public
  def drive
    print "#{@model} #{@type} #{@capacity}"
    pump_gas
    p "drive"
  end
  def stop
    p "stop"
  end
  private
  def park
    p "park"
  end
  def pump_gas
    p "pump gas"
  end

end
