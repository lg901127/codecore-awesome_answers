// var readline = require("readline"); // requiring the readline module
// var rl = readline.createInterface( {
//   input: process.stdin,
//   output: process.stdout
// })
// rl.question("what is your name?", function(string){
//   console.log("Hello " + string);
//   process.exit();
// })
// var net = require("net"); // Node module that helps us create TCP server
//
// var server = net.createServer(function(socket){
//   socket.on("data", function(data){
//     console.log("Data received: " + data);
//     socket.write("Got it!");
//   });
// });
//
// server.listen(5000, "127.0.0.1");
// console.log("Server is running on IP address 127.0.0.1 and Port 5000");
// var net = require("net");

// var server = net.createServer(function(socket){
//   socket.on("data", function(data){
//     console.log("Hello " + data);
//     socket.write("Hello " + data);
//   })
// })
// server.listen(5000, "127.0.0.1");
// console.log("Server is running on IP address 127.0.0.1 and Port 5000");

var net = require("net"); // Node module that helps us create TCP server

var server = net.createServer(function(socket){
  socket.on("data", function(data){
    console.log("Data received: " + data);
    socket.write("Hello " + capitalize(data.toString()));
  });
});

var capitalize = function(name){
  return name.charAt(0).toUpperCase() + name.slice(1);
}

server.listen(5000, "127.0.0.1");
console.log("Server is running on IP address 127.0.0.1 and Port 5000");
