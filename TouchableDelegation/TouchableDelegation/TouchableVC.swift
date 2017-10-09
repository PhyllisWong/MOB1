//
//  TouchableVC.swift
//  TouchableDelegation
//
//  Created by djchai on 10/9/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import UIKit

protocol MyViewDelegate {
    func userDidTouch()
}

class TouchableVC: UIViewController, MyViewDelegate {
    
    @IBOutlet weak var circle: TouchableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         circle.delegate = self
    }
    
    func userDidTouch() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        print(storyboard)
        guard let chooseVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {return}
        
        self.navigationController?.pushViewController(chooseVC, animated: true)
    }
}
