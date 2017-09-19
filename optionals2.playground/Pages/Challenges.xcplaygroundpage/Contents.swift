//: [Previous](@previous)
 /*:
### Challenges:

 1. Write a function called `myNameIs` that takes a `Person?` as an argument and returns a `String` that introduces the person by name (e.g. `"My name is Nikolas."`). In case where the argument has no value, return a string indicating that the argument has no value: `"This is not a valid person object."` Use optional binding for the implementation.
 2. Use the `Person` class that is defined below and create a variable called `maybePerson1` of type `Person?`. Instantiate it with your own name.
 3. Create a variable called `maybePerson2` of type `Person?` and initialize it with `nil`.
 4. Test `myNameIs` by passing in `maybePerson1` and `maybePerson2` into it and observe the results.
 5. Write a second version of `myNameIs` (you can call it `myNameIs2` 😑) where you use pattern matching (i.e. the `switch` statement) to get the same functionality. Test this function with `maybePerson1` and `maybePerson2`, too.
 
 */

class Person {
	let name: String
	var age: Int?
	
	init(name: String) {
		self.name = name
		
  }
}


func myNameIs(name: Person?) -> String {
	var greeting: String = ""
	
	if let person = name {
		greeting = "Hello my name is \(person.name)."
	} else {
		greeting = " This is not a valid person object."
	}
	return greeting
}

var maybePerson1: Person? = Person(name: "Phyllis")
var maybePerson2: Person? = nil
var maybePerson3: Person? = Person(name: "Juan")

print(myNameIs(name: maybePerson3))
print(myNameIs(name: maybePerson1))



func myNameIs2(person: Person?) -> String {
	var greeting: String = ""
	
	switch person {
	case .some(let person):
		greeting = "Hello my name is \(person.name)."
	default:
		greeting = "This is not a valid person object."
	}
	return greeting
}


print(myNameIs2(person: maybePerson2))



var uchena: Person = Person(name: "Uchena")
print(myNameIs2(person: uchena))

uchena.age = 27

func getAge(person: Person?) -> String {
	var ageChecker: String = ""
	
	if let unwrappedPerson = person?.age {
		ageChecker = "\(person?.name)'s age is currently \(unwrappedPerson)"
	} else {
		ageChecker = ("This person did not input their age. ")
	}
	return ageChecker
}

print(getAge(person: uchena))

