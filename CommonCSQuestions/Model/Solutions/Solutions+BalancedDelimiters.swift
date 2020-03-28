//
//  Solutions+LonelyInteger.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 3/28/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

extension Solutions {
  
  class func balancedDelimiters(inString: String) -> Bool {
    
    var tempStack: Stack<String.Element> = Stack()
    
    for item in inString {
      
      if item == "{" || item == "[" || item == "(" {
        tempStack.push(item)
      }
      
      if item == "}" {
        let tempItem = tempStack.pop()
        if tempItem != "{" {
          return false
        }
      }
      
      if item == "]" {
        let tempItem = tempStack.pop()
        if tempItem != "[" {
          return false
        }
      }
      
      if item == ")" {
        let tempItem = tempStack.pop()
        if tempItem != "(" {
          return false
        }
      }

    }
    return  tempStack.isEmpty()
  }
}
