//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var answer4: UIButton!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        
        selectedAnswer = ""
        
        
        questionText!.text = quizData[currentQuiz]["questions"]!![currentQuestion]["text"] as? String
        let answer = Int((quizData[currentQuiz]["questions"]?![currentQuestion]["answer"]?! as? String)!)
        currentCorrectAnswer = (quizData[currentQuiz]["questions"]?![currentQuestion]["answers"]!![answer!-1] as? String)!
        
        answer1.setTitle(quizData[currentQuiz]["questions"]!![currentQuestion]["answers"]!![0] as? String, forState: .Normal)
        answer2.setTitle(quizData[currentQuiz]["questions"]!![currentQuestion]["answers"]!![1] as? String, forState: .Normal)
        answer3.setTitle(quizData[currentQuiz]["questions"]!![currentQuestion]["answers"]!![2] as? String, forState: .Normal)
        answer4.setTitle(quizData[currentQuiz]["questions"]!![currentQuestion]["answers"]!![3] as? String, forState: .Normal)
        
        
       
        currentQuestion++
        print("Current Question \(currentQuestion)")
    }
    
        
    @IBAction func answer1tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
        
    }
    @IBAction func answer2tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    @IBAction func answer3tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    @IBAction func answer4tap(sender: UIButton) {
        selectedAnswer = sender.currentTitle!
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(selectedAnswer)
    }
    
    

}
