// var net = require("net");
// var readline = require("readline");
// var rl = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });
//
// var client = net.Socket();
// client.on("data", function(data){
//   console.log("Data received from server: " + data);
// });
// client.connect(5000, "127.0.0.1", function(){
//   rl.question("your name: ", function(name){
//     client.write(capitalize(name));
//   })
// });
//
// var capitalize = function(string) {
//   temp = string[0].toUpperCase() + string.slice(1);
//   return temp;
// }
var net = require("net");
var readline = require("readline");

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var client = net.Socket();

client.on("data", function(data){
  console.log("Data received from server: " + data);
});

client.connect(5000, "127.0.0.1", function(){
  rl.question("Enter a string of nums ", function(string){
    client.write(string);
  });
});
