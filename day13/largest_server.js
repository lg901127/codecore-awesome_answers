const IP = "127.0.0.1";
const Port = 5000;
var net = require("net");

var largest = function(string) {
  var array = string.split(",");
  var max = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[i] / 1 > max) {
      max = array[i] / 1;
    }
  }
  return max;
}

var server = net.createServer(function(socket) {
  socket.on("data", function(data){
    console.log("Data received: " + data.toString());
    socket.write(largest(data.toString()).toString());
  });
});

server.listen(Port, IP);
console.log("Server is running on IP address 127.0.0.1 and Port 5000");
