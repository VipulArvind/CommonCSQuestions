//
//  Solutions+RansomNote.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 3/28/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

extension Solutions {
  
   class func runLengthEncodingEx(input: String) -> [(Int, Character)] {
       return input.reduce([(Int, Character)]()) {
           if $0.last?.1 == $1 {
             var r = $0; r[r.count - 1].0+=1; return r
           }
           return $0 + [(1, $1)]
       }
   }
  
   class func runLengthEncoding(str: String) -> String {
     
     var tempArray = [Int](repeatElement(0, count: 26))
     
     for char in str {
       if let currentCharAsciiVal = char.asciiValue,
         let asciiValueForA = Character("a").asciiValue {
         tempArray[Int(currentCharAsciiVal - asciiValueForA)] += 1
       }
     }
     var returnString = ""
     
     for (index, charCount) in tempArray.enumerated() where charCount > 0 {
       
       if let asciiValueForA = Character("a").asciiValue,
         let currentCharScalar = UnicodeScalar(Int(asciiValueForA) + index) {
         let currentChar = Character(currentCharScalar)
         returnString += String(charCount) + String(currentChar)
       }
     }
     
     return returnString
   }
}
