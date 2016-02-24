import UIKit

// Update the `gameScore` to 1024 and the `saveState` to 12 using the singleton instance. Then write code to access the `gameScore` and `saveState` values again. Remember that when accessing a type property, you use the type itself and not an instance.

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

GameManager.defaultManager.gameScore = 1024
GameManager.defaultManager.saveState = 12
let currentScore = GameManager.defaultManager.gameScore // 1024
let currentSaveState = GameManager.defaultManager.saveState // 12
