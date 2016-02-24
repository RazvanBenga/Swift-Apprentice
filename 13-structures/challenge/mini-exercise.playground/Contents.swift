//: Write a struct that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.

struct Pizza {
  let size: Int // Inches
  let toppings: [String] // Pepperoni, cheese
  let style: String // Thick, thin, hand-tossed
}

let pizza = Pizza(size: 14, toppings: ["Pepperoni", "Mushrooms", "Anchovies"], style: "Thin")

//: Rewrite `isInRange` to use `Location` and `DeliveryRange`.

import Darwin

struct Location {
  let latitude: Double
  let longitude: Double
}

struct DeliveryRange {
  var range: Double
  let center: Location
}

func isInRange(location: Location, range: DeliveryRange) -> Bool {
  let difference = sqrt(pow((range.center.latitude - location.latitude), 2) +
    pow((range.center.longitude - location.longitude), 2))
  if (difference < range.range) {
    return true
  }
  return false
}

let pizzaLocation = Location(latitude: 44.9871, longitude: -93.2758)
let pizzaRange = DeliveryRange(range: 1, center: pizzaLocation)
let closeCustomer = Location(latitude: 44.9871, longitude: -93.0758)
let farCustomer = Location(latitude: 43.9871, longitude: -92.0758)

isInRange(closeCustomer, range: pizzaRange)
isInRange(farCustomer, range: pizzaRange)

//: 1. Write an initializer for `DeliveryRange` that takes a `Location` and defaults the `range` to `150`.
//: 2. Create an initializer that takes a `String` for “City” or “Suburb” instead of an `Int` for range. Cities should have a range of `100` and suburbs a range of `150`.

struct DeliveryRange2 {
  var range: Double
  let center: Location

  init(center: Location) {
    self.center = center
    self.range = 150
  }

  init(center: Location, locationType: String) {
    switch locationType {
    case "City":
      self.range = 100
    case "Suburb":
      self.range = 150
    default:
      self.range = 100
    }
    self.center = center
  }
}
