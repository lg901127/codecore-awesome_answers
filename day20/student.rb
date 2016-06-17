class Student
  def initialize(first_name, last_name, score)
    @first_name = first_name
    @last_name = last_name
    @score = score
  end

  def full_name
    @full_name = @first_name + " " + @last_name
    @full_name
  end

  def grade
    if @score > 92
      @grade = "A"
    elsif @score > 80 && @score <= 92
      @grade = "B"
    elsif @score > 60 && @score <= 80
      @grade = "C"
    else
      @grade = "D"
    end
    @grade
  end

end
