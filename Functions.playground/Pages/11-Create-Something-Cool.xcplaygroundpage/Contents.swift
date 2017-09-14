/*:
 ![Make School Banner](./swift_banner.png)
 # Create something cool
 
 - experiment: Use everything you learned to draw something awesome! See below for a few more functions you can use to bring your art to life!
 
 ## Drop and lift the pen
 
 - callout(Drop the pen): `penDown()`
 
 
 - callout(Lift the pen): `penUp()`
 
 
 - note: The pen starts out down.
 
 ## Moving the pen
 
 - callout(Move by a number of steps): `move(steps: Int)`
 
 
 - callout(Move directly to coordinates): `moveTo(x: Int, y: Int)`
 
 
 - callout(Rotate heading by an angle): `rotate(degrees: Int)`
 
 ## Change the pen
 
 - callout(Set color of pen): `setColor(red: Double, green: Double, blue: Double)`
 
 
 - note: Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 
 
 - callout(Set thickness of pen): `set(thickness: Double)`
 
 */
//: [Previous](@previous)
/*:
 
 - callout(Challenge): Draw something awesome in the space below!
 
 */
/*:

- callout(Challenge): Draw something awesome in the space below!

*/
func drawSquare (sideLength: Int){
	for _ in 1 ... 4 {
		move(steps: sideLength)
		rotate(degrees: 90)
	}
}
//drawSquare (sideLength: 100)

func drawTriangle (sideLength: Int){
	for _ in 1 ... 3 {
		move(steps: sideLength)
		rotate(degrees: 120)
	}
}

//drawTriangle (sideLength: 100)

func drawPentagon (sideLength: Int){
	for _ in 1 ... 5 {
		move(steps: sideLength)
		rotate(degrees: 72)
	}
}

//drawPentagon (sideLength: 100)

func drawHex (sideLength: Int){
	for _ in 1 ... 6 {
		move(steps: sideLength)
		rotate(degrees: 60)
	}
}

penUp()
moveTo(x: 265, y: 240) // starting point for first square
rotate(degrees: 180) // starting point for the pen direction
penDown()
drawSquare (sideLength: 200)
penUp()
rotate(degrees: 45)
// move to draw second square
moveTo(x: 305, y: 340)
setColor(red: 0.0, green: 0.0, blue: 1.0)
penDown()
drawSquare (sideLength: 200)
penUp()
move(steps: 50)
//move to draw the 3rd square
moveTo(x: 295, y: 395)
rotate(degrees: 23)
setColor(red: 1.0, green: 0.0, blue: 1.0)
penDown()
drawSquare (sideLength: 200)
penUp()
moveTo(x: 220, y: 470)
rotate(degrees: 45)
setColor(red: 1.0, green: 0.0, blue: 1.0)
penDown()
drawSquare (sideLength: 200)
penUp()

moveTo(x: 121, y: 241)
rotate(degrees: -128)
//setColor(red: 1.0, green: 1, blue: 1.0)
penDown()
drawTriangle (sideLength: 80)
penUp()
setColor(red: 1.0, green: 0.0, blue: 1.0)
moveTo(x: 265, y: 300)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)
penUp()
moveTo(x: 208, y: 437)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)
penUp()
moveTo(x: 65, y: 383)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)
moveTo(x: 65, y: 300)
rotate(degrees: 45)
drawTriangle (sideLength: 80)
penUp()
moveTo(x: 205, y: 240)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)
penUp()
moveTo(x: 265, y: 380)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)
penUp()
moveTo(x: 125, y: 440)
rotate(degrees: 90)
penDown()
drawTriangle (sideLength: 80)

penUp()
moveTo(x: 0, y: 0)






















































































//: This is setup code to make the live visualization work!
Pen.delay = 0.1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
