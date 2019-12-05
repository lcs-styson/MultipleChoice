//
//  ViewController.swift
//  MultipleChoice
//
//  Created by Tyson, Sebastian on 2019-12-03.
//  Copyright © 2019 Tyson, Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOfQuestions: UITextField!
    @IBOutlet weak var studentAnswer: UITextField!
    @IBOutlet weak var correctAnswers: UITextField!
    @IBOutlet weak var studentsResults: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func answerChecker(_ sender: Any) {
        
        // guard statements making sure there is an input in the box, that its more that zero and lets the questions become an integer
        guard let questionCount = amountOfQuestions.text,
                questionCount.count > 0,
                let questions = Int(questionCount)  else {
            studentsResults.text = "PLease enter a valid amount of questions"
            return
        }
        // Guard statements making sure there are answers in the input
        guard let studentAnswers = studentAnswer.text,
            studentAnswers.count > 0 else {
            studentsResults.text = "Please enter the students answers"
        return
        }
        
        guard let correctAnswers = correctAnswers.text,
            correctAnswers.count > 0 else {
            studentsResults.text = "Please enter the correct answers"
            return
        }
    
    }
    
    
}



