import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 400, height: 400)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let viewWidth = canvas.frame.size.width * 0.33
let viewHeight = viewWidth

let purpleX = canvas.frame.size.width - viewWidth * 0.5
let greyX = canvas.center.x
let greenX = canvas.centerXAnchor
let blueY = canvas.frame.size.height - viewHeight * 0.5

let viewFrame = CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight)

let purpleView = UIView(frame: viewFrame)
let greyView = UIView(frame: viewFrame)
let greenView = UIView(frame: viewFrame)
let yellowView = UIView(frame: viewFrame)
let redView = UIView(frame: viewFrame)
let orangeView = UIView(frame: viewFrame)
let lightGreyView = UIView(frame: viewFrame)
let whiteView = UIView(frame: viewFrame)
let blueView = UIView(frame: viewFrame)
greenView.backgroundColor = .green
purpleView.backgroundColor = .purple
greyView.backgroundColor = .gray
yellowView.backgroundColor = .yellow
redView.backgroundColor = .red
orangeView.backgroundColor = .orange
lightGreyView.backgroundColor = .lightGray
whiteView.backgroundColor = .white
blueView.backgroundColor = .blue

canvas.addSubview(purpleView)
canvas.addSubview(greyView)
canvas.addSubview(greenView)
canvas.addSubview(yellowView)
canvas.addSubview(redView)
canvas.addSubview(orangeView)
canvas.addSubview(lightGreyView)
canvas.addSubview(whiteView)
canvas.addSubview(blueView)

purpleView.center.x = purpleX
greyView.center.x = greyX
yellowView.center.y = canvas.center.y
redView.center.y = canvas.center.y
redView.center.x = greyX
orangeView.center.y = canvas.center.y
orangeView.center.x = purpleX

blueView.center.x = purpleX
blueView.center.y = blueY
lightGreyView.center.y = blueY
whiteView.center.x = canvas.center.x
whiteView.center.y = blueY















