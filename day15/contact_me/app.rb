require "sinatra"
require "sinatra/reloader"
enable :sessions
use Rack::MethodOverride
require "pony"
require 'yaml'
get "/" do
  # session[:database] ||= YAML.load(File.read("database.yaml"))
  $session = YAML.load(File.read("database.yaml"))
  puts @session
  erb :index, layout: :app_layout
end

post "/send" do
  puts params
  Pony.mail :to => 'lg901127@gmail.com',
            :via => :sendmail,
            :subject => 'Howdy, Partna!'

  $session << [params[:name], params[:address], params[:department], params[:message]]
  puts session[:database]
  File.open("database.yaml", "w") {|file| file.write(YAML::dump($session))}
  erb :index
end


#   def self.save
#     File.open("database.yaml", 'w') {|file| file.write(YAML::dump($student_hash))}
#     puts "Saved!"
#   end
#
#   def self.load
#     data = YAML.load(File.read("database.yaml"))
#     $student_hash = data
#   end
