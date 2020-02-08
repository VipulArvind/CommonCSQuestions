//
//  QuestionsCell.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit

class QuestionsCell: UICollectionViewCell {
  
  @IBOutlet weak var lblQuestionText: UILabel!
  
  func updateValues(questionText: String) {
    lblQuestionText.text = questionText    
  }
}
