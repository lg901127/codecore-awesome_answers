document.addEventListener("click", function() {
  var notes = prompt("enter your notes yo: ");
  // console.log(notes);
  var notes = parseSong(notes);
  // console.log(notes);
  playSong(notes, 400, onComplete);
})

var parseSong = function(notes) {
  var noteMatcher = /([A-Z][#b]?)([*])?([0-9]+)?/g;
  var result;
  var noteObjs = [];
  while (result = noteMatcher.exec(notes)) {
    noteObjs.push({
      pitch: result[1],
      beats: Number(result[3]) || 1
    })
  }
  return noteObjs;
}

var onComplete = function () {
  var user_input = prompt("Please enter some note and beats (i.g. A*1 B*2)");
  var notes = parseSong(user_input)
  playSong(notes, 200, onComplete)
}
console.log(parseSong("A*2 B C#*3 D"));
