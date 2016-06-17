var net = require("net");

var PORT = 8080;
var HOST = "127.0.0.1";

target = Math.round(Math.random() * 100);
counter = 0;
var server = net.createServer(function(socket) {
 socket.on("data", function(data) {
  //  var target = Math.round(Math.random() * 100);
   console.log("Data received: " + data.toString());
   var guess;
   console.log(target);
   guess = data;
     if (parseInt(guess) > target) {
       socket.write("Guess lower!");
       counter += 1;
     }
     else if (parseInt(guess) < target) {
       socket.write("Guess higher!");
       counter += 1;
     }
     else {
       counter += 1;
       socket.write("Correct! The number is: " + target + ". You've guessed " + counter + " times.");
     }
 });
});

server.listen(PORT, HOST)
console.log("Server is running on HOST: " + HOST + " and PORT: " + PORT);
