import UIKit

// Do you have a television or a computer monitor? Measure the height and width, plug it into a `TV` struct, and see if the diagonal measurement matches what you think it is.

// Picture of real TV: http://www.screenmath.com/images/compare02.gif

struct TV {
  var height: Double
  var width: Double
  
  var diagonal: Int {
    get {
      return Int(round(sqrt(height * height + width * width)))
    }
    set {
      let ratioWidth: Double = 16
      let ratioHeight: Double = 9
      height = Double(newValue) * ratioHeight /
        sqrt(ratioWidth * ratioWidth + ratioHeight * ratioHeight)
      width = height * ratioWidth / ratioHeight
    }
  }
  
}

var tv = TV(height: 15.7, width: 28)
let size = tv.diagonal // 32
