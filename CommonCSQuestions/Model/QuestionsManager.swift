//
//  QuestionsManager.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

class QuestionsManager {
  
  public var questions: [QuestionModel] = []
  
  private init() {
    initValues()
  }
  
  static let shared = QuestionsManager()
  
  private func initValues() {
    
    questions.append(QuestionModel(smallTitle: "Ransom Note from Magazine Article",
                                   text: "A Kidnapper wishes to write a ransom note using letters from a Magazine article. Given the article and ransom text, find whether the kidnapper can write the note or not",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "Please enter the ransom Note",
                                   isSecondLabelAndTextValid: true,
                                   textForSecondLabel: "Please enter the Magazine article"))
    questions.append(QuestionModel(smallTitle: "t2",
                                   text: "Q2",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "ABC",
                                   isSecondLabelAndTextValid: false,
                                   textForSecondLabel: "DEF"))
  
    
  }
  
  func count() -> Int {
    return questions.count
  }
  
  func question(at: Int) -> QuestionModel? {
    if questions.count > at {
      return questions[at]
    }
    
    return nil
  }
}
