require "rack"

class MyApplication
  def self.call(env)
    request = Rack::Request.new(env)
    puts request.params
    [200, {"Content-Type" => "text/html"}, ["Hello world"]]
  end
end

Rack::Handler::WEBrick.run MyApplication
