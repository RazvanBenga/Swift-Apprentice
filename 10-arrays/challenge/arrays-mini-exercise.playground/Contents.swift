// -------------------
// | Mini Challanges |
// -------------------

// Use indexOf(_:) to determine the position of the element "Dan" in players.

var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]

print(players.indexOf("Dan"))


// Write a for-in loop that prints the players' names and scores.

players = ["Anna", "Brian", "Craig", "Donna", "Eli", "Franklin"]
let scores = [2, 2, 8, 6, 1, 2]

for (index, playerName) in players.enumerate() {
  print("\(index + 1). \(playerName) - \(scores[index])")
}

