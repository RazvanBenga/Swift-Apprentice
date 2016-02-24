//: Completely remove the class hierarchy from the `Coach` and `StudentAthlete` example. In other words, use `Person`, `Student` and `TeamMember` protocols. What are the advantages of this approach? Disadvantages?

protocol TeamMember {
  var role: String { get }
  func play()
}

protocol Student {
  // Grades
}

protocol Person {
  var firstName: String { get }
  var lastName: String { get }
}

struct Coach: Person, TeamMember {
  let firstName: String
  let lastName: String

  let role: String = "Coach"

  func play() {
    print("Coach the game!")
  }
}

struct StudentAthlete: Person, Student, TeamMember {
  let firstName: String
  let lastName: String

  let role: String = "Player"

  func play() {
    print("Play the game!")
  }
}


//: By using protocols, every object can implement each protocol member how it chooses. The downside is that
//: protocol members that are satisfied by simple stored properties must be redeclared for every impleemnting type.
