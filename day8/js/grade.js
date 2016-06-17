document.addEventListener("click", function() {
  var flag = true;
  while (flag) {
    var grade = prompt("Enter grade: ");
    if (grade >= 92 && grade <= 100) {
      alert("A");
      var flag = false;
    }
    else if (grade < 92 && grade >= 80) {
      alert("B");
      var flag = false;
    }
    else if (grade < 80 && grade >= 70) {
      alert("C");
      var flag = false;
    }
    else if (grade < 70 && grade >= 60) {
      alert("D");
      var flag = false;
    }
    else if (grade < 60 && grade >= 0) {
      alert("E");
      var flag = false;
    }
    else {
      alert("Invalid!");
    }
   }
})
