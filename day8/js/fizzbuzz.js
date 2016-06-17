document.addEventListener("click", function() {
  var content = document.getElementById("content");
  var a = Number(prompt("First number: "));
  var b = Number(prompt("Second number: "));
  for (var i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      content.innerHTML += "FIZZBUZZ<br>";
    }
    else if (i % a == 0) {
      content.innerHTML += "FIZZ<br>";
    }
    else if (i % b == 0) {
      content.innerHTML += "BUZZ<br>";
    }
    else {
      content.innerHTML += i + "<br>";
    }
  }
})
