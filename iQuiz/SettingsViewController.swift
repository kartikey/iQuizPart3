//
//  SettingsViewController.swift
//  iQuiz
//
//  Created by studentuser on 11/19/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var urlField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlField.text = "http://tednewardsandbox.site44.com/questions.json"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func refreshQuiz(sender: UIButton) {
        
        var newQuiz = [AnyObject]()
        
        
        let newurl = "http://tednewardsandbox.site44.com/questions.json"
        
        let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        let session = NSURLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        let URL = NSURL(string: newurl)
        
        let request = NSMutableURLRequest(URL: URL!)
        
        request.HTTPMethod = "GET"
        
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            
            
            
            do {
                newQuiz = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [AnyObject]
                
                //quizData = newQuiz
                
               
                
                defaults.setObject(newQuiz, forKey: "quizstuff")
                
                //print(newQuiz)
                
                /*let file = "quizcontent.txt" //this is the file. we will write to and read from it
                
                if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
                    let path = dir.stringByAppendingPathComponent(file);
                    
                    //writing
                    do {
                        try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
                    }
                    catch {/* error handling here */}
                    
                    //reading
                    do {
                        let text2 = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                        
                        print(text2)
                    }
                    catch {/* error handling here */}
                }*/
                
            }
            catch {
                
                
            }
            
        }
        
        task.resume()
        
        
        

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
