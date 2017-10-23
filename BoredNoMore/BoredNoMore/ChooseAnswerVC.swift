//
//  ChooseAnswerVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit
typealias TriviaCallback = (Trivia) -> ()

class ChooseAnswerVC: UIViewController {
    
    @IBOutlet weak var answerCell: UITableViewCell!
    var answerCallback: TriviaCallback?
    
    var answers: [Trivia] = []
    var selectedAnswer: Trivia?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSelection(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath)
        
        cell.textLabel?.text =  answers[indexPath.row].answer
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedAnswer = answers[indexPath.row]
        
        guard let callback = answerCallback else {return}
        print("answer sent")
        callback(selectedAnswer)
        self.navigationController?.popViewController(animated: true)
    }
    
}
