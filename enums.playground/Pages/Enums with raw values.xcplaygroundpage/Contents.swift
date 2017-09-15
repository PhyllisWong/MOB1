//: [Previous](@previous)

import Foundation

// implicit assignment of raw values
// ~~~~~~~~ no assignment of raw value ~~~~~~~~~~~~~~

enum Face1: String {
  case happy
  case sad
  case nerd
}

Face1.happy.rawValue
//print(Face1.happy.rawValue)
//print(Face1.happy)


// explicit assignment of raw values
// ~~~~~~~~~~ assigning a raw value ~~~~~~~~~~~~~~~~~~~
enum Face2: String {
  case happy = ":-)"
  case sad = ":-("
  case nerd = "8-)"
}

Face2.happy.rawValue
// Face2.nerd ~~ prints the word nerd
//print(Face2.nerd)
// Face2.nerd.rawValue ~~ prints the nerd "face"
//print(Face2.nerd.rawValue)


// implicit assignment of raw values
enum Weekday1: Int {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday1.monday.rawValue
//print(Weekday1.monday.rawValue)


// explicit assignment of raw values
enum Weekday2: Int {
  case monday = 1
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday2.monday.rawValue
//print(Weekday2.monday.rawValue)

/*:
 
 ### Challenges
 
 1. Model a type called `CardinalDirection` using an `enum`. What could be the different _values_ for this type?
 2. Write a function called `help`, that takes a value of type `CardinalDirection` and returns a `String`. This function is supposed to help a lost ship on an ocean to find its way back home (it needs to go north-east). The return value of the function should indicate whether the value that was passed in helps the ship to get home. Use an *arrow unicode character* (`→`, `←`, `↑`, `↓`) in the returned `String` to illustrate the direction on a map, e.g.: `This direction (↓) does not help the ship to get home.`
 3. Model a type called `Month` using an `enum`. That type should represent all the different months in one year. 
 4. Write a function that returns a `String` and indicates at which position this month is inside a year, e.g.: `March is the 3rd month of the year`.
 */

// initialize the enum and define the cases
enum CardinalDirection: String {
	case north = "↑"
	case west = "←"
	case east = "→"
	case northEast = "↑→"
	case northWest = "↑←"
}

// create the function to help a lost ship
func help(direction: CardinalDirection) -> String {
	// assign the arrows to the constant directionHome
	let directionHome = direction.rawValue
	
	// assign a string with the direction arrows to the answer constant
	let answer: String = "Go this way \(directionHome) to get home"

	// use a switch statement to return the string answer
	switch direction {
	default:
		return answer
	}
}

print(help(direction: CardinalDirection.north))
print(help(direction: CardinalDirection.northEast))


// model an enum of months with rawValue of position in the year
enum Month: String {
	case january = "1st"
	case february = "2nd"
	case march = "3rd"
	case april = "4th"
	case may = "5th"
	case june = "6th"
	case july = "7th"
	case august = "8th"
	case september = "9th"
	case october = "10th"
	case november = "11th"
	case december = "12th"
}

func positionInTheYear(month: Month) -> String {
	let capitalize = "\(month)".capitalized
	let position = month.rawValue
	let result = "\(capitalize) is the \(position) month of the year."
	
	return result
}

// March is the 3rd month of the year.
print(positionInTheYear(month: Month.march))
print(positionInTheYear(month: Month.october))

print("enums with raw values lesson complete")



