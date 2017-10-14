//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 500))

greenView.backgroundColor = .green
PlaygroundPage.current.liveView = greenView


let redView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

redView.backgroundColor = .red
PlaygroundPage.current.liveView = redView


