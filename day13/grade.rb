require "rack"

class MyApplication
  def self.call(env)
    request = Rack::Request.new(env)
    puts request.params
    value = request.params.values[0].to_i
    if value >= 92
      grade = "A"
      color = "red"
    elsif value >= 80 && value < 92
      grade = "B"
      color = "blue"
    elsif value >=70 && value < 80
      grade = "C"
      color = "green"
    else
      grade = "D"
      color = "black"
    end
    [200, {"Content-Type" => "text/html"}, ["<h1 style='color: " + color +"'>" + grade + "</h1>"]]
  end
end

Rack::Handler::WEBrick.run MyApplication
