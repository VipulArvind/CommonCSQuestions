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
  
  public let questions: [QuestionsModel] = []
  
  private init() {
    initValues()
  }
  
  static let shared = QuestionsManager()
  
  private func initValues() {
    
  }
  
  func questionsCount() -> Int {
    return questions.count
  }
  
  func questionTextFor(itemAtIndex: Int) -> String {
    return ""
  }
}
