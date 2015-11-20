//
//  QuizTableViewCell.swift
//  iQuiz
//
//  Created by studentuser on 11/11/15.
//  Copyright © 2015 iSchool. All rights reserved.
//

import UIKit

class QuizTableViewCell: UITableViewCell {

    @IBOutlet weak var quizName: UILabel!
    @IBOutlet weak var quizImage: UIImageView!
    var quizId: Int!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
