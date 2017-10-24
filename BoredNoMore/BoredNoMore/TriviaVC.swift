//
//  TriviaVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class TriviaVC: UIViewController, ChooseAnswerDelegate {
    func didSelectAnswer(answer: String) {
        print(answer)
    }
    

    @IBOutlet weak var triviaLabel: UILabel!
    let triviaProvider = TriviaProvider()
    var currentQuestion: Trivia? // Holds the questions and all possible answers
    var selectedAnswer: String?
    var initialAnswerHolder: [String] = []
    
    
    
    @IBAction func didPressChooseAnswer() {
        goToChooseAnswerVC()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let showQuestion = triviaProvider.randomQuestion()
        self.currentQuestion = showQuestion
        var randomizedAnswers = randomizeAnswers(answersArr: initialAnswerHolder)
        
        self.initialAnswerHolder.append(showQuestion.answer)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer1)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer2)
        self.initialAnswerHolder.append(showQuestion.wrongAnswer3)
        
        triviaLabel.text = showQuestion.question
        
    }
    
    func randomizeAnswers(answersArr: [String]) -> [String] {
        var answers = answersArr
        var last = answersArr.count - 1
        
        while(last > 0)
        {
            let rand = Int(arc4random_uniform(UInt32(last)))
            
            print("swap items[\(last)] = \(answers[last]) with items[\(rand)] = \(answers[rand])")
            
            answers.swapAt(last, rand)
            
            print(answers)
            
            last -= 1
        }
        return answers
    }
    
    func checkGuessedCorrectAnswer(selectedAnswer: String) {
        let correctAnswer = currentQuestion?.answer
        print("Answer received")
        if selectedAnswer == currentQuestion?.answer {
            triviaLabel.text = "You're right! Its \(selectedAnswer)"
        } else {
            triviaLabel.text = "Your guess was wrong, it was \(String(describing: correctAnswer))"
        }
    }
    
    func goToChooseAnswerVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let chooseAnswerVC = storyboard.instantiateViewController(withIdentifier: "ChooseAnswerVC") as! ChooseAnswerVC
        chooseAnswerVC.recievedAnswerObject = self.currentQuestion
        chooseAnswerVC.delegate = self
        
        self.navigationController?.pushViewController(chooseAnswerVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
