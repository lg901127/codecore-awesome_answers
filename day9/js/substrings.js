var substrings = function(string) {
  var result = [];
  for (i = 0; i < string.length; i++) {
    for (j = i; j < string.length; j++) {
      result.push(string.slice(i, j + 1));
    }
  }
  return result;

}
console.log(substrings("dog"));
