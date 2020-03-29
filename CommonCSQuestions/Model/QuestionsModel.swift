//
//  QuestionsModel.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// QuestionsModel
//      Class to implement the model of 1 question
//
//

import UIKit
import Foundation

class QuestionModel: NSObject {
  
  // MARK: - vars
  
  var id: Int = 0
  var smallTitle: String = ""
  var text: String = ""
  
  var isFirstLabelAndTextValid: Bool = false
  var textForFirstLabel: String = ""
  
  var isSecondLabelAndTextValid: Bool = false
  var textForSecondLabel: String = ""
  
  // MARK: - Init
  override init() {
  }
  
  init(id: Int,
       smallTitle: String,
       text: String,
       isFirstLabelAndTextValid: Bool,
       textForFirstLabel: String,
       isSecondLabelAndTextValid: Bool,
       textForSecondLabel: String) {
    
    self.id = id
    self.smallTitle = smallTitle
    self.text = text
    
    self.isFirstLabelAndTextValid = isFirstLabelAndTextValid
    self.textForFirstLabel = textForFirstLabel
    
    self.isSecondLabelAndTextValid = isSecondLabelAndTextValid
    self.textForSecondLabel = textForSecondLabel
    
    super.init()
  }
}
