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
  
  class func selectionSort(inArray: inout [Int]) {

    for index in 0...inArray.count - 2 {
      var indexForMinItem = index
      for indexUnsorted in (index + 1)...(inArray.count - 1) where (inArray[indexUnsorted] < inArray[indexForMinItem]) {
        indexForMinItem = indexUnsorted
      }
      
      inArray.swapAt(index, indexForMinItem)
      print("array after \(index) iteration \(inArray)")
    }    
  }
  
  class func indexOfMin(inArray: [Int], sizeOfArray: Int, startIndex: Int) -> Int {
    var indexForMinItem = startIndex
    for index in startIndex...sizeOfArray - 1 where (inArray[index] < inArray[indexForMinItem]) {
      indexForMinItem = index
    }
    return indexForMinItem
  }
  
  class func recursiveSelectionSort(inArray: inout [Int], sizeOfArray: Int, startIndex: Int) {
    if sizeOfArray == startIndex {      // exit condition
      return
    }
    
    let minIndex = indexOfMin(inArray: inArray, sizeOfArray: sizeOfArray, startIndex: startIndex)
    
    if minIndex != startIndex {
      inArray.swapAt(minIndex, startIndex)
    }
    
    print("array after iteration \(inArray)")
    
    recursiveSelectionSort(inArray: &inArray, sizeOfArray: sizeOfArray, startIndex: startIndex + 1)
  }
}
