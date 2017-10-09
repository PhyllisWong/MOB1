//
//  TouchableVC.swift
//  TouchableDelegation
//
//  Created by djchai on 10/9/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import UIKit

protocol SendingTouchDelegate {
    func userDidTouch()
}

class TouchableVC: UIViewController, SendingTouchDelegate {
    
    var delegate: SendingTouchDelegate? = nil

    @IBOutlet weak var circle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View Contoller works")
    }
    
    func userDidTouch() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let chooseVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        
        self.navigationController?.pushViewController(chooseVC, animated: true)
    }
}
