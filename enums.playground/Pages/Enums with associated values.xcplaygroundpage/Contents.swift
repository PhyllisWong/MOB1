//: [Previous](@previous)
class Person {
	let name: String
	
	init (name: String) {
		self.name = name
	}
}

enum MassageChair {
	case free
	case occupied(Person)
}

// initialize a new instance of Person
let phyllis = Person(name: "Phyllis")
let juan = Person(name: "Juan")

// initialize the state of the massage chair
let massageChair = MassageChair.occupied(juan)


//switch the case of massageChair to print out a message to the user


switch massageChair {
case .free:
	print("The massage chair is now available")
case .occupied (let person):
	print("\(person.name) is currently enjoying a relaxing massage. Please do not disturb, your turn is coming up soon.")
}

/*:

 ### Challenges
 
 1. Model a type called `Box` that is either empty or contains exactly one `Thing`. `Thing` looks as follows:
 ```
 class Thing {
   let name: String
 
   init(name: String) {
     self.name = name
   }
 }
 ```
 2. Create an empty `Box`
 3. Create three different `Box`es, each should contain one item of the following: `Soccer Ball`, `Phone`, `Chocolate`
 4. Write a function that takes a `Box` as an argument and returns a `String` indicating what that `Box` contains.
 5. Make the `Box` _generic_ so that it can contain an object of any type, not just `Thing`.
 */
class Thing {
	let name: String
	
	init(name: String) {
		self.name = name
	}
}

enum Box<HasName> {
	case empty
	case contains(HasName)
}

enum Optional<String> {
	case none
	case some(String)
}

var emptyBox = Box<String>.empty
emptyBox = .contains("hello")
var stringBox = Box<String>.empty

// box with soccerball
let soccerBall = Thing(name: "Soccer Ball")
let boxWithSoccerBall = Box.contains(soccerBall)

// box with choclolate
let tchoChocolate = Thing(name: "Tcho Chocolate")
let boxWithChocolate = Box.contains(tchoChocolate)

// box with phone
let iPhone = Thing(name: "iPhone 5S")
let boxWithPhone = Box.contains(iPhone)



protocol HasName {
	var name: String {
		get
	}
}

func inTheBox(box: Box<HasName>) -> String {
	switch box {
	case .empty:
		return "box is empty"
	case .contains(let thing):
		return "box contains something: \(thing.name)"
	}
}



//inTheBox(box: boxWithSoccerBall)
//inTheBox(box: emptyBox)

let box = Box.contains("hello")
//inTheBox(box: box:String?)







