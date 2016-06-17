document.addEventListener("click", function() {
  var guess;
  var target = Math.round(Math.random() * 100);
  var counter = 0;
  while (guess != target) {
    guess = prompt("Try one: ")
    if (guess > target) {
      alert("Too large");
      counter += 1;
    }
    else if (guess < target) {
      alert("Too small");
      counter += 1;
    }
  }
  alert("Correct! the number is: " + target + " you guessed: " + counter + " times.");
})
