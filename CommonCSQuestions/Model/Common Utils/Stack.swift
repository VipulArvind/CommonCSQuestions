//
//  Stack.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// Stack
//      A generic Stack Data Structure
//
//

import UIKit
import Foundation

struct Stack<Element> {
  
  var array: [Element] = []
  
  mutating func push(_ item: Element) {
    array.append(item)
  }
  
  func isEmpty() -> Bool {
    return array.isEmpty
  }
 
  mutating func pop() -> Element? {
    return array.popLast()
  }
  
  func peek () -> Element? {
    return array.last
  }
  
}
