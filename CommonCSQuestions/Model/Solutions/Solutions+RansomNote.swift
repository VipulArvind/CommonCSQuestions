//
//  Solutions.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 3/28/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// QuestionsManager
//      Class to implement the singleton for managing the questions data
//
//

import UIKit
import Foundation

extension Solutions {
  
  class func ransomNote(ransomeNote: String, magazineArticle: String) -> Bool {
    var availableChars = [Int](repeating: 0, count: 256)
    for char in magazineArticle {
      if let asciiCode = char.asciiValue {
        let index: Int = Int(asciiCode)
        availableChars[index] += 1
      }
    }
    
    for char in ransomeNote {
      if let asciiCode = char.asciiValue {
        let index: Int = Int(asciiCode)
        availableChars[index] -= 1
        
        if availableChars[index] < 0 {
          return false
        }
      }
    }
    
    return true
  }

}
