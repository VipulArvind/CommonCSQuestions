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
  
  class func lonelyInteger(inArray: [Int]) -> Int {
    var result = 0

    for item in inArray {
      result = result ^ item
    }
    
    return  result
  }
}
