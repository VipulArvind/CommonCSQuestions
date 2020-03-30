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
  
   class func binAdditionOf(_ firstNumber: Int, _ secondNumber: Int ) -> Int {
     var c: Int
     var a = firstNumber
     var b = secondNumber
     
     while b != 0 {
       //find carry and shift it left
       c = (a & b) << 1
       //find the sum
       a = a^b
       b = c
     }
    
     return a
   }
    
  // a - b
  // get 2's compliment of b and add in a
  class func binSubtracton(aIn: Int, bIn: Int ) -> Int {
    var b = bIn
         
    b = binAdditionOf(~b, 1)
    b = binAdditionOf(b, aIn)
     
    return b
   }
}
