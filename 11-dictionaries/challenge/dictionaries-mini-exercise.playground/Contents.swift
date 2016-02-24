// -------------------
// | Mini Challanges |
// -------------------

// Write a function that prints a given player's city and state

var bobData =
  ["name": "Bob",
  "profession": "Card Player",
  "country": "USA",
  "state": "CA",
  "city": "San Francisco"]

func printPlayerLocation(dict: [String: String]) {
  if let state = dict["state"], city = dict["city"] {
    print("Player lives in \(city), \(state)")
  }
}

