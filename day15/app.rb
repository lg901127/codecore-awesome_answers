require "sinatra"
require "sinatra/reloader"
enable :sessions
# enable PATCH & DELETE
use Rack::MethodOverride

get '/' do
  erb :index
end

get '/todo_list' do

  erb :todo_list
end

post '/add' do
  puts params
  session[:list] ||= []
  session[:list] << params[:task]
  redirect to '/list'
end

get '/list' do

  erb :list
end

get '/language' do
  # @language = session[:language]
  # @name = session[:name]
  erb :language
end

post '/language' do
  puts params
  session[:language] = params[:language]
  session[:name] = params[:name]
  # @language = session[:language]
  # @name = session[:name]
  redirect to "/language_selected"
end

get '/language_selected' do
  erb :language_selected
end

post '/color_change' do
  puts params
  session[:color] = params[:color]
  # @color = params[:color]
  # erb :index, layout: :app_layout
  redirect back
end

get "/delete_me" do
  erb :delete_me, layout: :app_layout
end

delete "/perform_delete" do
  "Performing Delete!!"
end
