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
    return Solutions.anagram(string1: string1, string2: string2) ? ("Anagram", true):("Not Anagram", true)
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
}
