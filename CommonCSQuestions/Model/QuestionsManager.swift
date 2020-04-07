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
    case BalancedDelimiters ((String, String) -> (String, Bool))
    case RunLengthEncoding ((String, String) -> (String, Bool))
    case SelectionSort ((String, String) -> (String, Bool))
    case RecursiveSelectionSort ((String, String) -> (String, Bool))
    case BubbleSort ((String, String) -> (String, Bool))
    case RecursiveBubbleSort ((String, String) -> (String, Bool))
    case InsertionSort ((String, String) -> (String, Bool))
    case RecursiveInsertionSort ((String, String) -> (String, Bool))
  }
  
  // MARK: - vars
  
  public var questions: [QuestionsModelEx] = []

  // https://stackoverflow.com/questions/24418951/array-of-functions-in-swift
  var funcs = [MyFuncs]()
  
  // MARK: - Init
  
  private init() {
    initValues()
  }
  
  static let shared = QuestionsManager()
    
  private func initValues() {
    let fileName = "questions"
    let fileManager: FileManager = FileManager.default
    
    guard let mainUrl = Bundle.main.url(forResource: fileName, withExtension: "json") else { return }
    
    do {
      if fileManager.fileExists(atPath: mainUrl.path) {
        let jsonData = try Data(contentsOf: mainUrl)
        let decoder = JSONDecoder()
        let aDict = try decoder.decode(AllQuestions.self, from: jsonData)
        questions = aDict.questions
      } else {
        print("file doesnt exist")
      }
    } catch {
      print(error)
    }
    
    // ths needs to be moved to JSON and handled appropriately
    
    funcs.append(MyFuncs.RansomNote(ransomNote))
    funcs.append(MyFuncs.Anagram(anagram))
    funcs.append(MyFuncs.Fibonacci(fibonacci))
    funcs.append(MyFuncs.LonelyInteger(lonelyInteger))
    funcs.append(MyFuncs.BalancedDelimiters(balancedDelimiters))
    funcs.append(MyFuncs.RunLengthEncoding(runLengthEncoding))
    funcs.append(MyFuncs.SelectionSort(selectionSort))
    funcs.append(MyFuncs.RecursiveSelectionSort(recursiveSelectionSort))
    funcs.append(MyFuncs.BubbleSort(bubbleSort))
    funcs.append(MyFuncs.RecursiveBubbleSort(recursiveBubbleSort))
    funcs.append(MyFuncs.InsertionSort(insertionSort))
    funcs.append(MyFuncs.RecursiveInsertionSort(recursiveInsertionSort))
  }
  
  public func count() -> Int {
    return questions.count
  }
  
  public func question(at: Int) -> QuestionsModelEx? {
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
    case let .BalancedDelimiters(tMyFunc):
      return tMyFunc(string1, string2)
    case let .RunLengthEncoding(tMyFunc):
      return tMyFunc(string1, string2)
    case let .SelectionSort(tMyFunc):
      return tMyFunc(string1, string2)
    case let .RecursiveSelectionSort(tMyFunc):
      return tMyFunc(string1, string2)
    case let .BubbleSort(tMyFunc):
      return tMyFunc(string1, string2)
    case let .RecursiveBubbleSort(tMyFunc):
      return tMyFunc(string1, string2)
    case let .InsertionSort(tMyFunc):
      return tMyFunc(string1, string2)
    case let .RecursiveInsertionSort(tMyFunc):
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
  
  private func balancedDelimiters(string1: String, string2: String) -> (String, Bool) {
    return Solutions.balancedDelimiters(string1: string1, string2: string2)
  }
  
  private func runLengthEncoding(string1: String, string2: String) -> (String, Bool) {
    return Solutions.runLengthEncoding(string1: string1, string2: string2)
  }
  
  private func selectionSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.selectionSort(string1: string1, string2: string2)
  }

  private func recursiveSelectionSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.recursiveSelectionSort(string1: string1, string2: string2)
  }

  private func bubbleSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.bubbleSort(string1: string1, string2: string2)
  }
  
  private func recursiveBubbleSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.recursiveBubbleSort(string1: string1, string2: string2)
  }
  
  private func insertionSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.insertionSort(string1: string1, string2: string2)
  }

  private func recursiveInsertionSort(string1: String, string2: String) -> (String, Bool) {
    return Solutions.recursiveInsertionSort(string1: string1, string2: string2)
  }


}
