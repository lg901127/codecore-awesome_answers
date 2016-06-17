document.addEventListener("click", function() {
  for (var i = 14; i <= 50; i++) {
    time = "January 1, 20" + i;
    day = new Date(time);
    if (day.getDay() == 0) {
      alert(day);
    }
  }
})
