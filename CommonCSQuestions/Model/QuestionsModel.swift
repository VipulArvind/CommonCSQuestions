//
//  QuestionsModel.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

class QuestionsModel {    
  
  public let questions: [String] = ["Question 1", "Question 2"]
  
  private init() {
    initValues()
  }
  
  static let shared = QuestionsModel()
  
  private func initValues() {
    
  }
  
  func questionsCount() ->Int {
    return questions.count
  }
  
  func questionTextFor(itemAtIndex:Int) -> String {
    return questions[itemAtIndex]
  }
}
