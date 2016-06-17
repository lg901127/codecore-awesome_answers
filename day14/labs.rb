require "sinatra"
require "sinatra/reloader"
$results = []
get "/" do
  erb :labs, layout: :app_layout

end

get '/random' do
  erb :random
end

post '/random' do
  puts params
  @winner = ""
  @array = params[:names].split(",")
  @index = rand(@array.length)
  @winner = @array[@index]
  puts @winner
  erb :random
end

get '/fizzbuzz' do
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  puts params
  @results = []
  (1..100).each do |i|
    if i % @number1 == 0 && i % @number2 == 0
      @results << "FIZZBUZZ"
    elsif i % @number1 == 0
      @results << "FIZZ"
    elsif i % @number2 == 0
      @results << "BUZZ"
    else
      @results << i
    end
  end
  erb :fizzbuzz
end

get '/survey' do
  erb :survey, layout: :app_layout
end

post '/survey' do
  puts params
  @q_1 = params[:q_1]
  @q_2 = params[:q_2]
  @q_3 = params[:q_3]
  @results = {
  }
  if @q_1 == "With deadlines" && @q_2 == "Rational" && @q_3 == "Ideas"
    @personality = "Rational"
    erb :Rational
  elsif @q_1 == "With deadlines" && @q_2 == "Rational" && @q_3 == "Ideas"
    @personality = "Rational"
    erb :Rational
  elsif @q_1 == "With deadlines" && @q_2 == "Rational" && @q_3 == "Facts"
    @personality = "Guardian"
    erb :Guardian
  elsif @q_1 == "Without deadlines" && @q_2 == "Rational" && @q_3 == "Ideas"
    @personality = "Rational"
    erb :Rational
  elsif @q_1 == "Without deadlines" && @q_2 == "Rational" && @q_3 == "Facts"
    @personality ="Artisan"
    erb :Artisan
  elsif @q_1 == "With deadlines" && @q_2 == "Compassionate" && @q_3 == "Ideas"
    @personality = "Idealist"
    erb :Idealist
  elsif @q_1 == "With deadlines" && @q_2 == "Compassionate" && @q_3 == "Facts"
    @personality = "Guardian"
    erb :Guardian
  elsif @q_1 == "Without deadlines" && @q_2 == "Compassionate" && @q_3 == "Ideas"
    @personality = "Idealist"
    erb :Idealist
  else
    @personality = "Artisan"
    erb :Artisan
  end
    # erb :survey, layout: :app_layout
end

get '/cars' do
  erb :cars, layout: :app_layout
end

post '/cars' do
  puts params
  @year = params[:year].to_i
  case @year
  when 0..1900
    @status = "very old"
  when 1901..1990
    @status = "old"
  when 1991..2016
    @status = "new"
  when 2017..9999
    @status = "future"
  end
  erb :cars, layout: :app_layout
end

get '/calculator' do
  erb :calculator, layout: :app_layout
end

post '/calculator' do
  puts params
  @value_1 = params[:value_1].to_f
  @value_2 = params[:value_2].to_f
  @operation = params[:marks]
  case params[:marks]
  when "plus"
    @result = @value_1 + @value_2
    $results << "#{@value_1} + #{@value_2} = #{@result} "
  when "minus"
    @result = @value_1 - @value_2
    $results << "#{@value_1} - #{@value_2} = #{@result} "
  when "multiply"
    @result = @value_1 * @value_2
    $results << "#{@value_1} x #{@value_2} = #{@result} "
  when "divide"
    if @value_2 == 0
      @result = "cant divide by ZERO yo!!!!"
    else
      @result = @value_1 / @value_2
      $results << "#{@value_1} / #{@value_2} = #{@result} "
    end
  end
  erb :calculator, layout: :app_layout
end
