// document.addEventListener("click", function(){
//   var content = document.getElementById("content");
//   var input = prompt("enter a sentence: ");
//   var temp = input.charAt(0).toUpperCase() + input.substr(1);
//   content.innerHTML = temp;
// })
// document.addEventListener("click", function(){
//   var content = document.getElementById("content");
//   var input = prompt("enter a sentence: ");
//   var temp = input.split(" ");
//   for (var i = 0; i <= temp.length - 1; i++) {
//     temp[i] = temp[i].charAt(0).toUpperCase() + temp[i].substr(1);
//   }
//   content.innerHTML = temp.join(" ");
// })
document.addEventListener("click", function(){
  var content = document.getElementById("content");
  var input = prompt("enter a sentence: ");
  var temp = input.split(" ");
  for (var i = 0; i <= temp.length - 1; i++) {
    temp[i] = temp[i].charAt(0).toUpperCase() + temp[i].substr(1);
  }
  // for (var i = 1; i <= temp.length - 1; i++) {
  //   if (temp[i] == "the" || temp[i] == "of" || temp[i] == "a" || )
  // }
  content.innerHTML = temp.join(" ");
})
