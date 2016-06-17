document.addEventListener("click", function() {
  content = document.getElementById("content");
  var n = parseInt(prompt("Please enter the first number: "));
  var n2 = prompt("Please enter the second number: ")/1;
  var n3 = prompt("Please enter the third number: ")/1;
  var largestNumber = Math.max(n, n2, n3);
  alert(largestNumber);

})
