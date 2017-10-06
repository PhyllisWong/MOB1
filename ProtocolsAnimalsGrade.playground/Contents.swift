
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
    let name: String
    var courses: [Course] = []
    
    init(name: String) {
        self.name = name
    }
    
}

class Course {
    let name: String
    var roster: [Student] = []
    
    init(name: String) {
        self.name = name
    }
    
    func printRoster() {
        for student in roster {
            print(student.name)
        }
    }
}

let jane = Student(name: "Jane Doe")
let davey = Student(name: "Davey Jones")
let mob1 = Course(name: "Mobile 1")
let cs1 = Course(name: "Computer Science 1")
let web1 = Course(name: "Web Development 1")


jane.courses += [mob1, cs1]
davey.courses += [web1, cs1]
mob1.roster += [jane]
cs1.roster += [jane, davey]
mob1.printRoster()
cs1.printRoster()


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
