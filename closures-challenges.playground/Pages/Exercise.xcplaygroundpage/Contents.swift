/*:
 
 ### Closures
 
 In this playground, you will work on a few examples that are using closures and the concept of passing functions as arguments into other functions.
 
 Here is some code that you will use in one of the challenges.
 
 */

// computes the sum of all digits in integer a; relevant for task 5
func sumOfDigits(a: Int) -> Int {
  return String(a).characters.flatMap{Int(String($0))}.reduce(0, +)
}
sumOfDigits(a: 123) // 6

// Challenge 1:
func doesApply(a: Int, b: Int, myFunc: (Int, Int) -> Bool) -> Bool {
    return myFunc(a, b)
}

// Challenge 2:
func areBothDivisibleByThree(a: Int, b: Int) -> Bool {
    return a % 3 == 0 && b % 3 == 0
}

areBothDivisibleByThree(a: 47685, b: 344832)

// Challenge 3:
doesApply(a: 47685, b: 344832, myFunc: areBothDivisibleByThree)

// Challenge 4:
doesApply(a: 47685, b: 344832) { (first, second) -> Bool in
    return first % 3 == 0 && second % 3 == 0
}

// Challenge 5:
// Practice this syntax!!!!!
doesApply(a: 10, b: 24) { (a, b) -> Bool in
    return sumOfDigits(a: a) == sumOfDigits(a: b)
}
// Challenge 6:
func manipulateStrings(a: String, b: String, myFunc: (String, String) -> String?) ->String? {
    return myFunc(a, b)
}
// Challange 7:
func concatenateSmallStrings(a: String, b: String) -> String? {
    var catStr: String? = nil
    if (a.count < 5 && b.count < 5) {
        catStr = a + b
    }
    return catStr
}

// Challange 8:
manipulateStrings(a: "abc", b: "def") { (a, b) -> String? in
    return concatenateSmallStrings(a: a, b: b)
}
// returns "abcdef"
manipulateStrings(a: "abcdef", b: "ghijkl") { (a, b) -> String? in
    return concatenateSmallStrings(a: a, b: b)
}
// returns nil

/*:

 ### Challenges:
 
 1. Write a function called `doesApply` that returns a `Bool` and takes as arguments two `Int`s as well as a _function_ which again also takes two `Int`s and returns a `Bool`.
 2. Write a function called `areBothDivisibleByThree` that takes two `Int`s as arguments and returns `true` if both are divisible by the number 3 (i.e. there is no remainder after having done the division), `false` otherwise.
 3. Use `doesApply` in combination with `areBothDivisibleByThree` to figure out whether 47685 and 344832 are both divisible by the number 3.
 4. Use `doesApply` to figure out whether 85436 and 53893 are both divisible by three but passing the third argument as a closure (so you can't use the previously defined `areBothDivisibleByThree` any more).
 5. Use `doesApply` to find out if the sums of the digits of `a` and `b` are the same (you can use the function `sumOfDigits` that is defined above for this task).
 6. Write a function called `manipulateStrings` that returns an _optional_ `String` (so, the return type of the function is `String?`) and takes two `String`s as argument as well as another function that takes two `String`s and returns an _optional_ `String`.
 7. Write a function called `concatenateSmallStrings` that takes two `String`s and returns an _optional_ `String`. If both input arguments have less than 5 characters, return the two `String`s concatenated, otherwise return `nil`.
 8. Use the `manipulateStrings` function in combination with the `concatenateSmallStrings` and try to concatenate `"abc"` and `"def"` as well as `"abcdef"` and `"ghijkl"`. What do the calls return?
 */






