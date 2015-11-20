//
//  QuizContent.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

 var defaults = NSUserDefaults.standardUserDefaults()
var maxscore = 0
var currentQuestion = 0
var totalScore = 0
var currentQuiz = Int()
var selectedAnswer = String()
var currentCorrectAnswer = String()

struct Question {
    var quest = String()
    var answers = [String]()
    var correctAnswer = String()
    
    init(quest: String, answers: [String], correctAnswer: String) {
        self.quest   = quest
        self.answers = answers
        self.correctAnswer  = correctAnswer
    }
}


var quizData = [AnyObject]()
var quizicons = [UIImage(named: "science"),UIImage(named: "earth"),UIImage(named: "math")]
/*var quizzes = ["Math", "Geography", "Science"]


var mathQuiz = [Question(quest: "2+2=", answers: ["4","7","2","5"], correctAnswer: "4"),Question(quest: "2x2=", answers: ["4","8","6","2"], correctAnswer: "4"),Question(quest: "2/2=", answers: ["1","2","4","8"], correctAnswer: "1"),Question(quest: "2%2=", answers: ["1","2","4","0"], correctAnswer: "0")]

var geographyQuiz = [Question(quest: "Capital of USA?", answers: ["NYC","Washington D.C.","San Francisco","Seattle"], correctAnswer: "Washington D.C."),Question(quest: "Which of these is not a continent?", answers: ["Africa","USA","Antartica","UAE"], correctAnswer: "USA"),Question(quest: "How many continents are there in the world?", answers: ["5","6","7","8"], correctAnswer: "7"),Question(quest: "Capital of Japan", answers: ["Tokyo","Kyoto","Akihabara","Nakano"], correctAnswer: "Tokyo")]

var scienceQuiz = [Question(quest: "Chemical composition of common salt?", answers: ["Sodium Chloride","Sodium Bicarbonate","Sodium Iodide","Potassium Permanganate"], correctAnswer: "Sodium Chloride"),Question(quest: "Gravity of moon compared to each is rougly?", answers: ["1/6","1/2","1/10","2x"], correctAnswer: "1/6"),Question(quest: "How many planets are there in the Solar System?", answers: ["8","9","10","11"], correctAnswer: "8"),Question(quest: "How many moons does Jupiter have?", answers: ["1","2","3","4"], correctAnswer: "3")]
*/



class QuizContent: NSObject {

}
