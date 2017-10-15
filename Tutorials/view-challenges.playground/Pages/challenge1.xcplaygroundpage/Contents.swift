
import UIKit
import PlaygroundSupport

<<<<<<< HEAD
let canvasFrame = CGRect(x: 0, y :0, width: 200, height: 200)
=======
let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 400)
>>>>>>> 9e0d51c8ce9044015c3e62a0bd226242e043c1ed
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor
/*:
 **Task**: Add a `UIView` to the `canvas` that is half as wide and half as high as the `canvas`. This new `UIView` should be _centered_ on the canvas:
 
 ![Challenge 1](./challenge1.png "Challenge 1")

 1. Implement above task by setting the view's `frame` directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
<<<<<<< HEAD
=======
let redWidth = canvas.frame.size.width * 0.5
let redHeight = redWidth
let redX = Int(canvas.frame.size.width - redWidth)

let redFrame = CGRect(x: 0, y: 0, width: redWidth, height: redWidth)
let redView = UIView(frame: redFrame)
redView.backgroundColor = .red
canvas.addSubview(redView)
redView.center.y = canvas.center.y
redView.center.x = canvas.center.x

>>>>>>> 9e0d51c8ce9044015c3e62a0bd226242e043c1ed
