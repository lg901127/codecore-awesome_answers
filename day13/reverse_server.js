const IP = "127.0.0.1";
const Port = 5000;
var net = require("net");

var reverseString = function(string) {
  temp = [];
  for (i = string.length - 1; i >= 0; i--) {
    temp.push(string[i]);
  }
  return temp.join("");
}

var server = net.createServer(function(socket) {
  socket.on("data", function(data){
    console.log("Data received: " + data.toString());
    socket.write(reverseString(data.toString()));
  });
});

server.listen(Port, IP);
console.log("Server is running on IP address 127.0.0.1 and Port 5000");
