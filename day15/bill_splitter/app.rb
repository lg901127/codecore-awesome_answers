require "sinatra"
require "sinatra/reloader"
enable :sessions
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['aaa', 'bbb']
  end
end

get "/" do
  session[:name] = "Tam"
  @result = params[:result]
  erb :index, layout: :app_layout
end

post "/split" do
  protected!
  puts params
  @amount = params[:amount].to_f
  @tax = params[:tax].to_f
  @tip = params[:tip].to_f
  @number_of_people = params[:number_of_people].to_i
  if @number_of_people > 0
    @amount_each = @amount * (1 + @tax / 100) * (1 + @tip / 100) / @number_of_people
    @result = "Everyone must pay $#{@amount_each.round(2)}"
  else
    @result = "Please enter the correct amount of people"
  end
  # erb :index, layout: :app_layout
  redirect to("/?result=#{@result}")
end

get '/about' do
  erb :about, layout: :app_layout
end
