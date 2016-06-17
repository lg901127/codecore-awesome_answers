cards = {
  hearts: ["ACE", "KING", "QUEES", "JACK", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
  diamonds: ["ACE", "KING", "QUEES", "JACK", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
  clubs: ["ACE", "KING", "QUEES", "JACK", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
  spades: ["ACE", "KING", "QUEES", "JACK", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
}

var printCard = function(cards) {
  for (element in cards) {
    for (var i = 0; i < 13; i++) {
      console.log(element + " " + cards[element][i]);
    }
  }
}
printCard(cards);

var shuffleCard = function(cards) {
  deck = []
  for (element in cards) {
    for (var i = 0; i < 13; i++) {
      deck.push(element + " " + cards[element][i]);
    }
  }
  // var i = 0;
  // var j = 0;
  var temp = 0;
  for (i = deck.length - 1; i > 0; i--) {
    j = Math.floor(Math.random() * i);
    temp = deck[i];
    deck[i] = deck[j];
    deck[j] = temp;
  }
  return deck;
}
console.log(shuffleCard(cards));
// console.log(shuffleCard)
