# require "rack"
# $myfile = File.read("dictionary.txt")
# $dic = []
# $myfile.each do |line|
#     p line
#     p line.split(" ")[0]
#     $dic << line
# end
# class MyApplication
#   def self.call(env)
#     request = Rack::Request.new(env)
#     puts request.params
#     if request.params.length >= 1
#       # $dic.each do |line|
#       #     p line.split(" ")[0]
#       # end
#       $dic.each do |line|
#         if line.split(" ")[0] == request.params.values[0]
#           [200, {"Content-Type" => "text/html"}, [line]]
#         else
#           [200, {"Content-Type" => "text/html"}, ["Welcome to my application"]]
#         end
#       end
#     else
#       [200, {"Content-Type" => "text/html"}, ["Welcome to my application"]]
#     end
#   end
# end
# Rack::Handler::WEBrick.run MyApplication


# myfile  = File.open('dictionary.txt')
# p myfile
# myfile.each do |line|
#     puts line.split(" ")[0]
# end

require 'rack'
require 'open-uri'

class Dictionary

 def self.call(env)
   request = Rack::Request.new(env)

   if request.params.length == 0
     [200, {"Content-Type" => "text/html"}, ["Welcome to dictionary"]]
   else
     uri = 'https://s3.amazonaws.com/codecore-website-data/certifiedin_images/Oxford+English+Dictionary.txt'
     dictionary = open(uri){|f| f.read }
     word = request["word"]
    #  puts word
     found = false
     defenition = ''
     dictionary.each_line do |line|
       if line.start_with?(word)
         found = true
         defenition = line
       end
     end
     defenition = "Word not found" unless found
     [200, {"Content-Type" => "text/html"}, ["The definition is: #{defenition}"]]
   end
 end

end

Rack::Handler::WEBrick.run Dictionary
