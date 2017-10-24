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
    let triviaProvider = TriviaProvider()
    var currentQuestion: Trivia? // Holds the questions and all possible answers
    var selectedAnswer: Trivia?
    var initialAnswerHolder: [String] = []
    
    
    @IBAction func didPressChooseAnswer() {
        goToChooseAnswerVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let showQuestion = triviaProvider.randomQuestion()
        self.currentQuestion = showQuestion
        //I have to make an array from her Object properties
        
        self.initialAnswerHolder.append(showQuestion.answer)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer1)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer2)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer3)
        
       
        triviaLabel.text = showQuestion.question
        
    }
    
//    func checkGuessedCorrectAnswer(selectedAnswer: Trivia) {
//        self.selectedAnswer = currentQuestion
//        print("Answer received")
//        if selectedAnswer == currentQuestion?.answer {
//            triviaLabel.text = "You're right! Its \(selectedAnswer.answer)"
//        } else {
//            triviaLabel.text = "Your guess was wrong, it was \(selectedAnswer.answer)"
//        }
//    }
    
    func goToChooseAnswerVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let chooseAnswerVC = storyboard.instantiateViewController(withIdentifier: "ChooseAnswerVC") as! ChooseAnswerVC
        chooseAnswerVC.recievedAnswerObject = self.currentQuestion
        self.navigationController?.pushViewController(chooseAnswerVC, animated: true)
//        self.performSegue(withIdentifier: "ChooseAnswer", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
