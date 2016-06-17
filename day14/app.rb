require "sinatra"
require "sinatra/reloader"
# REST API - verbs
require "faker"
get "/" do
  # "<h1>hello world!</h1>" +
  # "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
  @title = "Welcome to Cohort 13 Consulting"
  @greeting = "Hello World!!!!"
  @array_greeting = ["hello", "good day", "greetings"]
  erb(:index, {layout: :app_layout})
end

get "/portfolio/:name" do |name|
  @name = name
  @title = "my name is #{@name}"
  erb(:portfolio, {layout: :app_layout})
end

get "/about" do
  @title = "About us"
  erb(:about, {layout: :app_layout})
end

get "/contact" do
  @name = params["name"]
  @title = params["title"]
  puts params
  puts "@name: #{@name}"
  erb(:contact, {layout: :app_layout})
end

get '/company' do
  erb(:company)
end

post '/company' do
  @company_name = Faker::Company.name
  @address = Faker::Address.street_address
  puts params
  @first_name = params[:first_name]
  erb(:success)
end

get '/convert' do
  erb(:convert, {layout: :app_layout})
end

post '/convert' do
  @temp_c = params[:temp_c].to_f
  @temp_f = (@temp_c * 1.8 + 32).round(2)
  erb :convert, layout: :app_layout
end

get '/currency' do
  erb(:currency, {layout: :app_layout})
end

post '/currency' do
  # @temp_c = params[:temp_c].to_f
  # @temp_f = (@temp_c * 1.8 + 32).round(2)
  # @usd = params[:usd].to_i || params[:cad].to_i * 0.76 || params[:pond].to_i * 1.44
  # @pond = params[:pond].to_i || params[:usd].to_i / 1.44 || params[:cad].to_i / 1.88
  # @pond = params[:usd].to_i / 1.44
  # puts params
  # puts params[:pond].to_i
  # @cad = params[:cad].to_i || params[:usd].to_i * 1.44 || params[:pond].to_i * 1.88
  puts params

  params[:usd] == "" ? @usd = params[:cad].to_i * 0.76 || params[:pond].to_i * 1.44 : @usd = params[:usd]
  params[:pond] == "" ? @pond = params[:usd].to_i * 0.69 || params[:cad].to_i * 0.53 : @pond = params[:pond]
  params[:cad] == "" ? @cad = params[:usd].to_i * 1.44 || params[:pond].to_i * 1.88 : @cad = params[:cad]
  erb :currency, layout: :app_layout
end

get '/calculator' do
  erb :calculator, layout: :app_layout
end

post '/calculator' do
  puts params
  @plus_1 = params[:plus_1].to_i;
  @plus_2 = params[:plus_2].to_i;
  @minus_1 = params[:minus_1].to_i;
  @minus_2 = params[:minus_2].to_i;
  @mul_1 = params[:mul_1].to_i;
  @mul_2 = params[:mul_2].to_i;
  @div_1 = params[:div_1].to_i;
  @div_2 = params[:div_2].to_i;
  @plus_result = @plus_1 + @plus_2
  @minus_result = @minus_1 - @minus_2
  @mul_result = @mul_1 * @mul_2
  @div_result = @div_1 / @div_2
  erb :calculator, layout: :app_layout
end
