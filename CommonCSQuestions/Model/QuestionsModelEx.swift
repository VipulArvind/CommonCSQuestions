//
//  QuestionsModelEx.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// QuestionsModelEx
//      Class to implement the model of 1 question
//
//

import UIKit
import Foundation

struct QuestionsModelEx: Codable {
  var id: Int
  var smallTitle: String
  var text: String
  var isFirstLabelAndTextValid: Bool
  var textForFirstLabel: String
  var isSecondLabelAndTextValid: Bool
  var textForSecondLabel: String
  
  init() {
    id = -1
    smallTitle = ""
    text = ""
    isFirstLabelAndTextValid = false
    textForFirstLabel = ""
    isSecondLabelAndTextValid = false
    textForSecondLabel = ""
  }
}

struct AllQuestions: Codable {
  var questions: [QuestionsModelEx]
}
