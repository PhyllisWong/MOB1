
import UIKit
import PlaygroundSupport


// Problem #1
// Modeling Data (Structs, Enums, Classes)
// We want to represent Students and Courses
// Students have a list of courses that they take
// Courses also have a list of students
// Write a function in courses that prints out the names of all the students in a course
// Write an instance of student with a list of courses and an instance of course that has a list of students
// Test out the function in course that prints out its list of students

class Student {
    var name: String
    var courseList = [Course]()
    
    init(name: String) {
        self.name = name
    }
    
    func printCourses() {
        for course in courseList {
            print(course.name)
        }
    }
}

class Course {
    var name: String
    var roster = [Student]()
    
    init(name: String) {
        self.name = name
    }
    
    func printRoster() {
        for student in roster {
            print(student.name)
        }
    }
}

let bob = Student(name: "bob")
let jane = Student(name: "jane")

var mob1 = Course(name: "Mobile 1")

mob1.roster.append(bob)
mob1.roster.append(jane)
bob.courseList.append(mob1)
jane.courseList.append(mob1)

mob1.printRoster()
jane.printCourses()



// Problem #2
// Protocols & Modeling (Structs, Enums, Classes)
/*:
 We need to model different types of Animals in the animal kindom
 a. Animals need to have a species
 b. All Animals need to eat food
 c. Some Animals can Jump, some can Fly
 d. Create instance of 3 animals with different species, some can fly, can jump, some can fly and jump
 e. Put them in an array and print out animals than can only fly
 
 
*/

enum FoodType {
    case meat
    case grass
}

protocol Fly {
    func fly()
}

protocol Jump {
    func jump()
}

protocol Animal {
    var species: String {get set}
    func eat(food: FoodType)
}

struct Cat: Animal, Jump {
    var species: String
    func eat(food: FoodType) {
        print("this animal easts \(food)")
    }
    
    func jump() {
        print("This animal jumps really high")
    }
}

struct Bird: Animal, Fly {
    var species: String
    func eat(food: FoodType) {
        print("")
    }
    func fly() {
        print("")
    }
}


// Delegates Review
/*:
 
*/


//protocol MeansOfCommunicatingBetweenSenderAndReciever {
//    func senderSent(something: String)
//}
//
//struct Sender {
//    var delegate: MeansOfCommunicatingBetweenSenderAndReciever?
//
//    func somethingHappened() {
//        //Some action I want to send
//        delegate?.senderSent(something: "Hey")
//    }
//}
//
//struct Reciever: MeansOfCommunicatingBetweenSenderAndReciever {
//
//    func senderSent(something: String) {
//        print(something)
//    }
//}

//var sender = Sender()
//let reciever = Reciever()
//
//sender.delegate = reciever
//
//sender.somethingHappened()


// Problem #3
/*
 You have a UIView called touchable view that handles a tap.
 a. Write a delegate that delegates the touch action to another view/viewcontroller (SomeViewController)
 
 b. Draw a diagram for the delegation between the TouchableView and the ViewController
*/
class TouchableView: UIView {
    
    let touchGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(tap:)))
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addGestureRecognizer(touchGesture)
        
    }
    
    @objc func handleTap(tap: UITapGestureRecognizer) {
        print("Tapped")
    }
}

let touchView = TouchableView(
    frame: CGRect(x: 0, y: 0, width: 100, height: 100)
)

touchView.backgroundColor = UIColor.red

// ViewController that will recieve taps
class SomeViewController: UIViewController {
    
    let touchableView = touchView
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



let vc = SomeViewController()



// Implement Delegation from problem #3


// Extra material to make playground work
PlaygroundPage.current.liveView = touchView
