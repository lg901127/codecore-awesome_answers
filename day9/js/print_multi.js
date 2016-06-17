var printMulti = function(array, init) {
  for (element in array) {
    if (Array.isArray(array[element])) {
      printMulti(array[element], init);
    }
    else {
      init.push(array[element]);
    }
  }
  return init;
}
var my_array = [[2,3,4], ["Hello CodeCore", 1, true]];
var init = [];
console.log(printMulti(my_array, init));
