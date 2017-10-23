//
//  TriviaVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class TriviaVC: UIViewController {

    @IBOutlet weak var triviaLabel: UILabel!
    let randomTrivia = TriviaProvider()
    
    
    @IBAction func didPressChooseAnswer() {
        goToChooseAnswerVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let showQuestion = randomTrivia.randomQuestion()
        triviaLabel.text = showQuestion[0]
    }
    
    func goToChooseAnswerVC() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let chooseAnswerVC = storyboard.instantiateViewController(withIdentifier: "ChooseAnswerVC") as! ChooseAnswerVC
//        // TODO: Make sure to set the *delegate* on the FunFactsViewController
//
//        self.navigationController?.pushViewController(chooseAnswerVC, animated: true)
        self.performSegue(withIdentifier: "ChooseAnswer", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
