require "sinatra"
require "sinatra/reloader"
enable :sessions

get "/" do
  erb :index, layout: :app_layout
end

post '/acquire_team' do
  puts params
  session[:teams_string] = params[:teams]
  session[:teams] = params[:teams].split(",")
  session[:selection] = params[:team_type]
  @check = params[:num].to_i
  if @check <= session[:teams].length && @check != 0
    if session[:selection] == "people_per_group"
      @people_per_group = params[:num].to_i
      # print "#{@people_per_group}!!!!!!!!!!!!!!!!!!!"
      @result = []
      @teams_shuffled = session[:teams].shuffle
      @member_1 = 0
      @length = @people_per_group
      begin
        @result << @teams_shuffled.slice(@member_1, @length)
        @member_1 += @people_per_group
      end while @member_1 <= @teams_shuffled.length-@length
      @temp = @teams_shuffled - @result.flatten
      # print "temp: #{@temp}!!!!!"
      # print "result: #{@result}?????"
      if @temp
        (0...@temp.length).each do |index|
          @result[rand(@result.length)] << @temp[index]
        end
      end
      session[:result] = @result
    else
      # session[:num_of_group] = params[:num].to_i
      @result_1 = []
      @num_of_group = params[:num].to_i
      @teams_shuffled = session[:teams].shuffle
      @people_per_group = @teams_shuffled.length / @num_of_group
      @member_1 = 0
      @length = @people_per_group
      # puts "LENGTH:::::#{@length}"
      begin
        @result_1 << @teams_shuffled.slice(@member_1, @length)
        # puts "RESULT_1::::::#{@result_1}"
        @member_1 += @people_per_group
        # puts "MEMBER_1::::::#{@member_1}"
      end while @member_1 <= @teams_shuffled.length-@length - 1
      @temp = @teams_shuffled - @result_1.flatten
      # print "temp: #{@temp}!!!!!"
      # print "result: #{@result_1}?????"
      if @temp
        (0...@temp.length).each do |index|
          @result_1[rand(@result_1.length)] << @temp[index]
        end
      end
    session[:result] = @result_1
    end
  else
  session[:result] = "Please enter a correct number!"
  end

  erb :index, layout: :app_layout
end
