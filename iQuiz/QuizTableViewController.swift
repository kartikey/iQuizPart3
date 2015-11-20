//
//  QuizTableViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class QuizTableViewController: UITableViewController {
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        totalScore = 0
        currentQuestion = 0
        quizData = defaults.objectForKey("quizstuff") as! [AnyObject]
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("quizCell", forIndexPath: indexPath) as! QuizTableViewCell
        
        if quizData.count > 0 {
        cell.quizName!.text = quizData[indexPath.row]["title"] as? String
        cell.quizId = indexPath.row
        //cell.quizName!.text = quizzes[indexPath.row]
        cell.quizImage!.image = quizicons[indexPath.row%3]

        
        }
       return cell
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //let view = segue.destinationViewController as! QuestionViewController
        
        if segue.identifier != "toSettings" {
        
            
        let cellname = sender as! QuizTableViewCell
        
        //currentQuiz = cellname.quizName!.text!
        currentQuiz = cellname.quizId
        currentQuestion = 0
            
        }
        
    }


}
