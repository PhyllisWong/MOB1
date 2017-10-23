//
//  ChooseFunVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class ChooseFunVC: UIViewController {

    
    @IBAction func didPressFunFacts(_ sender: UIButton) {
        goToFunFactsVC()
    }
    @IBAction func didPressTrivia(_ sender: UIButton) {
        goToTriviaVC()
    }
    @IBAction func didPressDadJokes(_ sender: UIButton) {
        goToDadJokesVC()
    }
    func goToFunFactsVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let funFactsVC = storyboard.instantiateViewController(withIdentifier: "FunFactsVC") as! FunFactsVC        
        self.navigationController?.pushViewController(funFactsVC, animated: true)
    }
    func goToTriviaVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let triviaVC = storyboard.instantiateViewController(withIdentifier: "TriviaVC") as! TriviaVC
        self.navigationController?.pushViewController(triviaVC, animated: true)
    }
    func goToDadJokesVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dadJokesVC = storyboard.instantiateViewController(withIdentifier: "DadJokesVC") as! DadJokesVC
        self.navigationController?.pushViewController(dadJokesVC, animated: true)
    }
    
    // ~~~~~~~ these 2 functions work together ~~~~~~~~~~~ //
    // This function makes the nav bar disappear on the first view controller.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    // This function makes the nav bar reappear on the following view controllers.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
