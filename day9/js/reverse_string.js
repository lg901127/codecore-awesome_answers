var reverseString = function(string) {
  temp = [];
  for (i = string.length - 1; i >= 0; i--) {
    temp.push(string[i]);
  }
  return temp.join("");
}
console.log(reverseString("this is a test"));
