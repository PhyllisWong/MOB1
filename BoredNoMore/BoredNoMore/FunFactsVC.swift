//
//  FunFactsVC.swift
//  FunFacts
//
//  Created by djchai on 10/16/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class FunFactsVC: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
    }
    
}

