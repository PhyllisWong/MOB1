//
//  DadJokesVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class DadJokesVC: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var jokeLabel: UILabel!
    
    let jokeProvider = JokeProvider()
    var currentJoke: DadJoke?
    
    @IBAction func didPressAnswer() {
        // Figure out how to display the correct joke answer for the joke
        answerLabel.text = currentJoke?.punchLine
        answerLabel.isHidden = false
    }
    
    @IBAction func didPressAnother() {
        let showJoke = jokeProvider.randomJoke()
        self.currentJoke = showJoke
        jokeLabel.text = showJoke.joke
        answerLabel.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let showJoke = jokeProvider.randomJoke()
        self.currentJoke = showJoke
        jokeLabel.text = showJoke.joke
        answerLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
