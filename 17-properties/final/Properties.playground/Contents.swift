import UIKit







struct Car {
  let make: String
  let color: String
}







enum Type {
  case Work, Family, Friend
}

struct Contact {
  var fullName: String
  let emailAddress: String
  var type: Type = .Friend
}

var person = Contact(fullName: "Grace Murray", emailAddress: "grace@navy.mil", type: .Work)

let name = person.fullName // Grace Murray
let email = person.emailAddress // grace@navy.mil

person.fullName = "Grace Hopper"
let grace = person.fullName // Grace Hopper

// Error: cannot assign a constant
// person.emailAddress = "grace@gmail.com"







struct TV {
  var height: Double
  var width: Double

  var diagonal: Int {
    // 1
    get {
      // 2
      return Int(round(sqrt(height * height + width * width)))
    }
    set {
      // 3
      let ratioWidth: Double = 16
      let ratioHeight: Double = 9
      // 4
      height = Double(newValue) * ratioHeight /
        sqrt(ratioWidth * ratioWidth + ratioHeight * ratioHeight)
      width = height * ratioWidth / ratioHeight
    }
  }

}

var tv = TV(height: 53.93, width: 95.87)
let size = tv.diagonal // 110
tv.width = 53.93
let diagonal = tv.diagonal // 76

tv.diagonal = 70
let height = tv.height // 34.32...
let width = tv.width // 61.01...










struct Level {
  static var highestLevel = 1
  let id: Int
  var boss: String
  var unlocked: Bool {
    didSet {
      if unlocked && id > Level.highestLevel {
        Level.highestLevel = id
      }
    }
  }
}

let level1 = Level(id: 1, boss: "Chameleon", unlocked: true)
let level2 = Level(id: 2, boss: "Squid", unlocked: false)
let level3 = Level(id: 3, boss: "Chupacabra", unlocked: false)
let level4 = Level(id: 4, boss: "Yeti", unlocked: false)

let highestLevel = Level.highestLevel // 1

class GameManager {
  // 1
  static let defaultManager = GameManager()
  var gameScore = 0
  var saveState = 0
  // 2
  private init() {}
}


















struct LightBulb {
  static let maxCurrent = 40
  var currentCurrent = 0 {
    didSet {
      if currentCurrent > LightBulb.maxCurrent {
        print("Current too high, falling back to previous setting.")
          currentCurrent = oldValue
      }
    }
  }
}

var light = LightBulb()
light.currentCurrent = 50
var current = light.currentCurrent // 0
light.currentCurrent = 40
current = light.currentCurrent // 40














class Circle {
  lazy var pi = {
    return ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    }()
  var radius: Double = 0
  var circumference: Double {
    return pi * radius * radius
  }

  init (radius: Double) {
    self.radius = radius
  }
}

let circle = Circle(radius: 5)
let circumference = circle.circumference // 78.53
// also, pi now has a value


let pi = M_PI
