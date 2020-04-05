//
//  Solutions.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// Solutions
//      Class to implement the singleton for managing the questions data
//
//

import UIKit
import Foundation

class Solutions {
  
  class func anagram(string1: String, string2: String) -> (String, Bool) {
    return Solutions.anagram(string1: string1, string2: string2) ? ("Anagram", true):("Not Anagram", false)
  }
  
  class func fibonacci(string1: String, string2: String) -> (String, Bool) {
    if let index = Int(string1), index >= 0 {
      let nthElement = Solutions.fibonacciItem(at: index)
      let retString = "The \(index)th item is \(nthElement)"
      return(retString, true)
    }
    
    return("Invalid Input", false)
  }
  
  class func ransomNote(ransomeNote: String, magazineArticle: String) -> (String, Bool) {
    return Solutions.ransomNote(ransomeNote: ransomeNote, magazineArticle: magazineArticle) ? ("Possible", true) : ("Not possible", false)
  }
  
  // first string is suppose to have all integers separated by whitespace
  // fill it in array and pass it to internal structure
  class func lonelyInteger(string1: String, string2: String) -> (String, Bool) {
    
    let separators = CharacterSet(charactersIn: ":,;")
    
    let intArray = string1.components(separatedBy: separators).compactMap {
      Int($0.trimmingCharacters(in: .whitespaces))
    }
    
    let result = Solutions.lonelyInteger(inArray: intArray)
    
    return (String(result), true)
  }
  
  class func balancedDelimiters(string1: String, string2: String) -> (String, Bool) {
    return Solutions.balancedDelimiters(inString: string1) ? ("Balanced", true):("Not Balanced", true)
  }
  
  class func runLengthEncoding(string1: String, string2: String) -> (String, Bool) {
    return (Solutions.runLengthEncoding(str: string1), true)
  }
  
  class func selectionSort(string1: String, string2: String) -> (String, Bool) {
    let separators = CharacterSet(charactersIn: ":,;")
    
    var intArray = string1.components(separatedBy: separators).compactMap {
      Int($0.trimmingCharacters(in: .whitespaces))
    }
    
    Solutions.selectionSort(inArray: &intArray)
    let outArray = intArray.map {String($0)}
    let outString = outArray.joined(separator: " ")
    return (outString, true)
  }
  
  class func recursiveSelectionSort(string1: String, string2: String) -> (String, Bool) {
    let separators = CharacterSet(charactersIn: ":,;")
    
    var intArray = string1.components(separatedBy: separators).compactMap {
      Int($0.trimmingCharacters(in: .whitespaces))
    }
    
    Solutions.recursiveSelectionSort(inArray: &intArray, sizeOfArray: intArray.count, startIndex: 0)
    let outArray = intArray.map {String($0)}
    let outString = outArray.joined(separator: " ")
    return (outString, true)
  }
  
  // "12, 11, 64, 98" - Input
  // "11, 12, 64, 98" - Output
  class func bubbleSort(string1: String, string2: String) -> (String, Bool) {
    let separators = CharacterSet(charactersIn: ":,;")
    
    var intArray = string1.components(separatedBy: separators).compactMap {
      Int($0.trimmingCharacters(in: .whitespaces))
    }
    
    Solutions.bubbleSort(inArray: &intArray)
    let outArray = intArray.map {String($0)}
    let outString = outArray.joined(separator: " ")
    return (outString, true)    
  }

  
  func sequenceOf3In(array: [Int]) -> Bool {
    if array.count < 3 {
      return false
    }
    
    for index in 0...array.count - 3 {
      if array[index] + 1 == array[index+1] && array[index+1] + 1 == array[index+2] {
        return true
      }
    }
    return false
  }

}
