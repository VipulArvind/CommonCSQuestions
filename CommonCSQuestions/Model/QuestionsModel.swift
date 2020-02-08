//
//  QuestionsModel.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

class QuestionModel: NSObject {
  
  // MARK: - vars
  var smallTitle: String = ""
  var text: String = ""
  
  var isFirstLabelAndTextValid: Bool = false
  var textForFirstLabel: String = ""
  
  var isSecondLabelAndTextValid: Bool = false
  var textForSecondLabel: String = ""
  
  override init() {
  }
  
  init(smallTitle: String,
       text: String,
       isFirstLabelAndTextValid: Bool,
       textForFirstLabel: String,
       isSecondLabelAndTextValid: Bool,
       textForSecondLabel: String) {
    
    self.smallTitle = smallTitle
    self.text = text
    
    self.isFirstLabelAndTextValid = isFirstLabelAndTextValid
    self.textForFirstLabel = textForFirstLabel
    
    self.isSecondLabelAndTextValid = isSecondLabelAndTextValid
    self.textForSecondLabel = textForSecondLabel
    
    super.init()
  }
}
