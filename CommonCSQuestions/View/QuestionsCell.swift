//
//  QuestionsCell.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// QuestionsCell
//      Class to implement the UICollectionViewCell of 1 question
//
//

import UIKit

class QuestionsCell: UICollectionViewCell {
  
  // MARK: - Outlets
  @IBOutlet weak var lblSmallTitle: UILabel!
  
  func updateValues(question: QuestionsModelEx) {
    lblSmallTitle.text = question.smallTitle
  }
}
