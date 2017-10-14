
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 400)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let redWidth = canvas.frame.size.width * 0.33
let redHeight = redWidth

let redFrame = CGRect(x: 0, y: 0, width: redWidth, height: redHeight)

let redView1 = UIView(frame: redFrame)
let redView2 = UIView(frame: redFrame)
let redView3 = UIView(frame: redFrame)

redView1.backgroundColor = .red
redView2.backgroundColor = .red
redView3.backgroundColor = .red

canvas.addSubview(redView1)
canvas.addSubview(redView2)
canvas.addSubview(redView3)
redView1.center.y = canvas.center.y
redView1.center.x = canvas.center.x
redView2.center.y = canvas.center.y * 1.66
redView2.center.x = canvas.center.x * 1.66



