import UIKit

// Create an array called `coinPurse` that contains coins. Add an assortment of pennies, nickels, dimes and quarters to it.

enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

let coinPurse: [Coin] = [.Penny, .Quarter, .Nickel, .Dime, .Penny, .Dime, .Quarter]