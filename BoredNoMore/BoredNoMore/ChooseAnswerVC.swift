//
//  ChooseAnswerVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

protocol ChooseAnswerDelegate: class {
    func didSelectAnswer(answer: String)
}

class ChooseAnswerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    weak var delegate: ChooseAnswerDelegate?
    @IBOutlet weak var answerCell: UITableView!
    
    var recievedAnswerObject: Trivia?
    var answers: [String] = []
    var selectedAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answers.append((recievedAnswerObject?.answer)!)
        answers.append((recievedAnswerObject?.wrongAnswer1)!)
        answers.append((recievedAnswerObject?.wrongAnswer2)!)
        answers.append((recievedAnswerObject?.wrongAnswer3)!)
        
        answerCell.dataSource = self as UITableViewDataSource
        answerCell.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath)
        cell.textLabel?.text = answers[indexPath.row]
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedAnswer = answers[indexPath.row]
        guard let delegate = self.delegate else {return}
        
        // call the method delegate / pass in the data to send
        delegate.didSelectAnswer(answer: selectedAnswer)
        print("answer sent")
        self.navigationController?.popViewController(animated: true)
    }
}
