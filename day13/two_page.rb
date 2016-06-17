require "rack"

class MyApplication
  def self.call(env)
    request = Rack::Request.new(env)
    puts request.params
    if request.params.length >= 1
      [200, {"Content-Type" => "text/html"}, ["<h1 style='color: red'>Hello " + request.params.values[0] + "</h1>"]]
    else
      [200, {"Content-Type" => "text/html"}, ["Welcome to my application"]]
    end
  end
end

Rack::Handler::WEBrick.run MyApplication
