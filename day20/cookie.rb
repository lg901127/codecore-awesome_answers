class Cookie
  attr_accessor :sugar, :flour

  def calorie_count
    sugar * 4 + flour * 3
  end
end
