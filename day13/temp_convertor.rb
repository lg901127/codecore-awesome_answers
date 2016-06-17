require "rack"

class MyApplication
  def self.call(env)
    request = Rack::Request.new(env)
    puts request.params
    hash = request.params
    # c = []
    # hash.values.each do |f|
    #   c << (f.to_i - 32)/1.8
    # end

    value = word.values.first

    [200, {"Content-Type" => "text/html"}, [c.to_s, hash.to_s]]
  end
end

Rack::Handler::WEBrick.run MyApplication

# [200, {"Content-Type" => "text/html"}, ["Hello DUDER! The temp converted to celcius is <h1 style='color:red;'>" + celcius + "</h1>"]]
