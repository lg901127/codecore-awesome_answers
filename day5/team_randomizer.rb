class Team
  attr_accessor :names, :number
  def initialize(names, number)
    @names = names
    @number = number
  end

  public
  def randomize
    puts @names.sample(@number)
  end
end
