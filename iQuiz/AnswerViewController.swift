//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var reply: UILabel!
    @IBOutlet weak var decision: UILabel!
    @IBOutlet weak var next: UIButton!
        
    @IBOutlet weak var finalNext: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        reply.text = "You chose \(selectedAnswer)"

        if(selectedAnswer == currentCorrectAnswer) {
            decision.text = "You are correct"
            totalScore++
        }
        else {
           decision.text = "You are wrong, correct answer is \(currentCorrectAnswer)"
        }
       
        print("Current Score is \(totalScore)")
        
        if(currentQuestion == quizData[currentQuiz]["questions"]!!.count) {
            next.hidden = true
            finalNext.hidden = false;
        } else {
            next.hidden = false;
            finalNext.hidden = true;
        }
        
    }

   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextFinalTap(sender: UIButton) {
    }

    @IBAction func nextTap(sender: UIButton) {
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
