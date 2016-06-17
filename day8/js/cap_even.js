document.addEventListener("click", function(){
  var content = document.getElementById("content");
  var input = prompt("enter a sentence: ");
  var temp = input.replace(/\s/g, '').split("");
  for (var i = 1; i <= temp.length - 1; i += 2) {
    temp[i] = temp[i].toUpperCase();
}
  content.innerHTML = temp;
})
