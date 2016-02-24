//: Add code that references `self` at every level of the `Person`/`Student`/`StudentAthlete` class hierarchy. What's different in the two-phase initialization in the base class `Person`, as compared to the others?

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

struct Grade { }

class Student: Person {
  var grades: [Grade] = []

  override init(firstName: String, lastName: String) {
    super.init(firstName: firstName, lastName: lastName)
  }
}

class StudentAthlete: Student {
  var failedClasses: [Grade] = []

  override init(firstName: String, lastName: String) {
    super.init(firstName: firstName, lastName: lastName)
  }
}

//: The `Person` base class only lives in phase-2, because it does not need to call super to any other class.

//: Create two more convenience initializers on `Student`. What other initializers are you able to call?

class Student2: Person {
  var grades: [Grade]

  override required init(firstName: String, lastName: String) {
    grades = []
    super.init(firstName: firstName, lastName: lastName)
  }

  convenience init(transfer: Student) {
    self.init(firstName: transfer.firstName, lastName: transfer.lastName)
  }
}

extension Student2 {
  convenience init(name: String) {
    self.init(firstName: "name", lastName: "")
  }

  convenience init() {
    self.init(firstName: "", lastName: "")
  }
}

let blankStudent = Student2()

// The convenience initializers are able to call the other convenience initiazers in addition to the required initializer.

//: Modify the `Student` class to have the ability to record the student's name to a list of graduates. Add the name of the student to the list when the object is deallocated.

class GradePrinter {
  func graduate(student: Student3) {
    print("\(student.lastName), \(student.firstName)")
  }
}

class Student3: Person {
  var grades: [Grade] = []
  var gradePrinter: GradePrinter?

  override init(firstName: String, lastName: String) {
    super.init(firstName: firstName, lastName: lastName)
  }

  deinit {
    gradePrinter?.graduate(self)
  }
}

let printer = GradePrinter()
var student: Student3? = Student3(firstName: "Jane", lastName: "Appleseed")
student?.gradePrinter = printer

student = nil


