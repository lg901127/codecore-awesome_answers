var mergeArray = function(array1, array2) {
  var counter = {};
  var merged = array1.concat(array2);
  var temp = [];
  for(var i = 0; i < merged.length; i++)
	{
		if (temp.indexOf(merged[i]) == -1) {
      temp.push(merged[i]);
    }
	}
  return temp;
}
console.log(mergeArray([1,2,3], [3,4,5]));
