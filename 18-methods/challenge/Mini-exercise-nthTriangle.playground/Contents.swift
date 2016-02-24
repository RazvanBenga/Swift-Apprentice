import UIKit

// Add a type method to the `Utils` structure that calculates the nth triangle number. It will be very similar to the factorial formula, except instead of multiplying the numbers, you add them.

struct Utils {
  static func factorial(number: Int) -> Int {
    return (1...number).reduce(1, combine: *)
  }
  static func nthtriangle(number: Int) -> Int {
    return (1...number).reduce(1, combine: +)
  }
}
let nthTriangle = Utils.nthtriangle(6) // 22
