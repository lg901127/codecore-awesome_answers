require "sinatra"
require "sinatra/reloader"
enable :sessions
use Rack::MethodOverride

get '/' do
  session[:notes] ||= []
  erb :index
end

post '/add' do
  puts params
  @title = params[:title]
  @content = params[:content]
  @note = [@title, @content]
  session[:notes] << @note
  erb :index
end

delete "/perform_delete" do
  puts params
  @title_to_delete = params[:item_delete]
  session[:notes].delete_if {|element| element[0] == @title_to_delete}
  erb :index
end
