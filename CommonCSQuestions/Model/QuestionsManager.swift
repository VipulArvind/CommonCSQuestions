//
//  QuestionsManager.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// QuestionsManager
//      Class to implement the singleton for managing the questions data
//
//

import UIKit
import Foundation

class QuestionsManager {
  
  enum MyFuncs {
    case RansomNote ((String, String) -> (String, Bool))
    case Anagram ((String, String) -> (String, Bool))
    case Fibonacci ((String, String) -> (String, Bool))
    case LonelyInteger ((String, String) -> (String, Bool))
  }
  
  // MARK: - vars
  
  public var questions: [QuestionModel] = []

  // https://stackoverflow.com/questions/24418951/array-of-functions-in-swift
  var funcs = [MyFuncs]()
  
  // MARK: - Init
  
  private init() {
    initValues()
  }
  
  static let shared = QuestionsManager()
  
  private func initValues() {
    
    questions.append(QuestionModel(questionID: 0,
                                   smallTitle: "Ransom Note from Magazine Article",
                                   text: "A Kidnapper wishes to write a ransom note using letters from a Magazine article. Given the article and ransom text, find whether the kidnapper can write the note or not",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "Please enter the ransom Note",
                                   isSecondLabelAndTextValid: true,
                                   textForSecondLabel: "Please enter the Magazine article"))
    questions.append(QuestionModel(questionID: 1,
                                   smallTitle: "Test 2 Strings for Anagram",
                                   text: "Write a function to check if 2 strings are anagram of each other or not",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "Please enter first string",
                                   isSecondLabelAndTextValid: true,
                                   textForSecondLabel: "Please enter second string"))
    questions.append(QuestionModel(questionID: 2,
                                   smallTitle: "nth Item of Fibonacci Series",
                                   text: "Write a function to print the nth item in Fibonacci Series",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "Please enter the index of item",
                                   isSecondLabelAndTextValid: false,
                                   textForSecondLabel: ""))

    questions.append(QuestionModel(questionID: 3,
                                   smallTitle: "Lonely Integer",
                                   text: "Given a list of numbers where all numbers are in pair except 1, find the number",
                                   isFirstLabelAndTextValid: true,
                                   textForFirstLabel: "Please enter list of numbers separated by space or commas",
                                   isSecondLabelAndTextValid: false,
                                   textForSecondLabel: ""))

    funcs.append(MyFuncs.RansomNote(ransomNote))
    funcs.append(MyFuncs.Anagram(anagram))
    funcs.append(MyFuncs.Fibonacci(fibonacci))
    funcs.append(MyFuncs.LonelyInteger(lonelyInteger))
  }
  
  public func count() -> Int {
    return questions.count
  }
  
  public func question(at: Int) -> QuestionModel? {
    if questions.count > at {
      return questions[at]
    }
    
    return nil
  }
  
  public func getSolution (questionID: Int, string1: String, string2: String) -> (String, Bool) {
    
    let tMyFunc = funcs[questionID]
    
    switch tMyFunc {
    case let .RansomNote(tMyFunc):
        return tMyFunc(string1, string2)
    case let .Anagram(tMyFunc):
      return tMyFunc(string1, string2)
    case let .Fibonacci(tMyFunc):
        return tMyFunc(string1, string2)
    case let .LonelyInteger(tMyFunc):
      return tMyFunc(string1, string2)
    }
  }
  
  private func ransomNote(ransomeNote: String, magazineArticle: String) -> (String, Bool) {
    return Solutions.ransomNote(ransomeNote: ransomeNote, magazineArticle: magazineArticle)
  }
      
  private func anagram(string1: String, string2: String) -> (String, Bool) {
    return Solutions.anagram(string1: string1, string2: string2)
  }
  
  private func fibonacci(string1: String, string2: String) -> (String, Bool) {
    return Solutions.fibonacci(string1: string1, string2: string2)
  }
      
  private func lonelyInteger(string1: String, string2: String) -> (String, Bool) {
    return Solutions.lonelyInteger(string1: string1, string2: string2)
  }
}
