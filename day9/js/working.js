document.addEventListener("click", function() {
  obj = {};
  sentence = prompt("Sentence: ");
  temp = sentence.split(" ");
  for (var i = 0; i < temp.length; i++) {
    // obj[temp[i]] = obj[temp[i]] || 0;
    obj[temp[i]] = temp[i].length;
  }
  console.log(obj);
})
