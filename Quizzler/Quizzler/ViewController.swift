//
//  ViewController.swift
//  Quizzler
//
//  Created by Tejas Anil Shah on 22/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber+1)/13"
        progressBar.frame.size.width = (view.frame.size.width/13)*CGFloat(questionNumber+1)
    }
    
    
    func nextQuestion() {
        if(questionNumber<=12){
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            let startOverAlert = UIAlertController(title: "End of the quiz", message: "You've reached the end of the quiz", preferredStyle: .alert)
            let startOverAction = UIAlertAction(title: "Restart", style: .default, handler: { (_) in
                self.startOver()
            })
            startOverAlert.addAction(startOverAction)
            present(startOverAlert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 1
        } else {
            ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
    
    
}
