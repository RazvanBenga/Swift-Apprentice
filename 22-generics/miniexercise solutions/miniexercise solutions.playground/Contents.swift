//: Playground - noun: a place where people can play

import UIKit


struct Cat {
  var name: String
}

struct Dog {
  var name: String
}

struct Keeper<T> {
  var name: String
  var morningAnimal: T
  var afternoonAnimal: T
}


let jason = Keeper(name: "Jason",
  morningAnimal: Cat(name: "Whiskers"),
  afternoonAnimal: Cat(name: "Sleepy"))


//: Mini-exercise 1: Try instantiating another `Keeper`, but this time for dogs.

// let us suppose that Sally is the name of a person who looks after dogs, a dog named "Benji" in the morning and dog named "Rufus" in the afternoon

let sally = Keeper(name: "Sally", morningAnimal: Dog(name: "Benji"), afternoonAnimal: Dog(name: "Rufus"))

//: Mini-exercise 2: What do you think would happen if you tried to instantiate a `Keeper` with a dog in the morning and a cat in the afternoon?

// This app does not drive a nuclear reactor. The best way to find out is to try! Let us uncomment the following line

// let paul = Keeper(name: "Paul", morningAnimal: Dog(name: "Lucky"), afternoonAnimal: Cat(name: "Sleepy"))


/** The error we get is the following: Cannot invoke initializer for type 'Keeper<_>' with an argument list of types '(name: String, morninngAnimal: Dog, afternoonAnimal:Cat)'. So this is what we'd expect. You cannot instantiate a `Keeper` by passing in a `String`, a `Dog`, and a `Cat`.

This is because `Dog` and `Cat` are not the same type. And it is implicitly required that the morning animal and afternoon animal be the same type, because they are both referred to as being of type `T` in the definition of Keeper. In other words, every appearance of `T` needs to have the same value throughout a single specialization of the generic type of which `T` is a type parameter.

So the call to the initializer `Keeper(name: "Jason", morningAnimal: Cat(name: "Whiskers"), afternoonAnimal: Cat(name: "Sleepy"))` is one specialization of `Keeper<T>`, and everywhere in this first specialization `T == Cat`. And `Keeper(name: "Jason", morningAnimal: Cat(name: "Whiskers"), afternoonAnimal: Cat(name: "Sleepy"))` is a second, separate, distinct specialization of `Keeper<T>`, and everywhere in this section specialization `T == Dog`. 

Each specialization of a generic type into a concrete type, is almost like a function call to the compiler, where the type parameter is the argument. Just like when you pass a value as the argument of the function, that value will be used throughout the body of the function.

*/


