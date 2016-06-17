var largest = function(array) {
  temp = array.sort();
  return temp[temp.length - 1];
}
console.log(largest([1,54,43,3,2,11]))
