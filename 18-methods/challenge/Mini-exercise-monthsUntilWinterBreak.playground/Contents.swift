import UIKit

// Since `monthsUntilWinterBreak()` returns a single value and there's not much calculation involved, transform the method into a computed property with a getter component.

enum Month: Int {
  case January = 1, February, March, April, May, June,
  July, August, September, October, November, December
  
  var monthsUntilWinterBreak: Int {
    return Month.December.rawValue - self.rawValue
  }
  
  // 1
  init() {
    // 2
    self = .March
  }
}

let month = Month() // March
let monthsLeft = month.monthsUntilWinterBreak // 9