//
//  Solutions+LonelyInteger.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 3/28/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

// 64 25 12 22 11
// 11 25 12 22 64
// 11 12 25 22 64
// 11 12 22 25 64
// 11 12 22 25 64

extension Solutions {
  
  class func bubbleSort(inArray: inout [Int]) {
    
    for index in 0...inArray.count - 2 {
      var itemsSwappedDuringThisPass = false
      
      for innerIndex in 0...(inArray.count - 2 - index) where (inArray[innerIndex] > inArray[innerIndex+1]) {
        inArray.swapAt(innerIndex, innerIndex+1)
        itemsSwappedDuringThisPass = true
      }
      
      if !itemsSwappedDuringThisPass {
        return
      }
    }
  }
}
