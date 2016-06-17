// console.log("hello");
// var a = 10;
// b = 20;
// console.log(a);
// console.log(b);
//
// var myNum = "1000abc";
// var myNum2 = 1000;
// var isEqual = (myNum === myNum2);
// console.log(isEqual);
// console.log("floor: " + Math.floor(3.5));
// console.log("round: " + Math.round(3.5));
// console.log("ramdom: " + Math.round(Math.random() * 100));
// console.log(myNum / 100);
// console.log(Number(myNum) / 100);
// console.log(parseInt(myNum));
// console.log(parseFloat(myNum));
name = "lee";
combo = "hello " + name + "!";
console.log(combo);
console.log(combo.length)
var a = "HelloWorld!";
console.log(a.substring(2, 9));

function myFunction() {
  console.log("im a function");
}
myFunction();

var myfunc2 = function() {
  console.log("this is an anonymous function");
};
myfunc2()

var myfunc = function(x, y) {
  console.log("I'm inside the function, x: " + x + " and y: " + y);
  return x + y
};

var z = myfunc(10,4);
console.log(z);
