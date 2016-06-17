var net = require("net");
var readline = require("readline");

var PORT = 8080;
var HOST = "127.0.0.1";

var rl = readline.createInterface({
 input: process.stdin,
 output: process.stdout
});

var client = net.Socket();

client.on("data", function(data){
 if (data.toString() === "Guess higher!") {
   rl.question("Guess higher!", function(string) {
     client.write(string);
   });
 }
 else if (data.toString() === "Guess lower!") {
   rl.question("Guess lower! ", function(string) {
     client.write(string);
   });
 }
 else {
   console.log(data.toString());
 }
});

client.connect(PORT, HOST, function(){
 rl.question("Please input a guess number: ", function(string) {
   client.write(string);
 })
});
