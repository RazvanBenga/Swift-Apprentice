import UIKit

// In the lightbulb example, the bulb goes back to a successful setting if the current gets too high. In real life, that wouldn't work. The bulb would burn out! Rewrite the structure so that the bulb turns off before the current burns it out.

// **Hint:** You can use `newValue` in the `willSet` observer.

class LightBulb: CustomStringConvertible {
  static let maxCurrent = 40
  var isOn = false
  var currentCurrent = LightBulb.maxCurrent {
    willSet {
      if newValue > LightBulb.maxCurrent {
        print("Current too high, turning off to prevent burn out.")
        isOn = false
      }
    }
    didSet {
      if currentCurrent > LightBulb.maxCurrent {
        print("Current too high, falling back to previous setting.")
        currentCurrent = oldValue
      }
    }
  }
  var description: String {
    let onOff = isOn ? "ON with \(currentCurrent) amps" : "OFF"
    return "Light bulb is \(onOff)"
  }
  func toggleSwitch() {
    isOn = !isOn
  }
}
// Installing a new bulb
let bulb = LightBulb() // Light bulb is off

// Flipping the switch
bulb.toggleSwitch() // Light bulb is ON with 40 amps

// Using the dimmer
bulb.currentCurrent = 30 // Light bulb is ON with 30 amps

// Using the dimmer to a high value
bulb.currentCurrent = 50 // Light bulb is OFF

// Flipping the switch
bulb.toggleSwitch() // Light bulb is ON with 30 amps
