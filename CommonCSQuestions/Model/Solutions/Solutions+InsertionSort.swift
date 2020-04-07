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

// 25 64 12 22 11
// 12 25 64 22 11
// 11 12 25 64 22
// 11 12 22 25 64
extension Solutions {
  
  class func findLocationInSortedArrayFor(itemAt: Int, inArray: [Int]) -> Int {
    for index in 0...itemAt - 1 where (inArray[itemAt] < inArray[index]) {
      return index
    }
    
    return itemAt
  }
  
  // it works like how we will sort deck of playing cards
  // we will start from left and iterate through whole list
  
  // let us say we have 5 numbers (64 25 12 22 11)
  // when we are at item 0...it is already sorted
  // when we are at item 1...we will try to find its position from 0..0 and see if it needs insertion
  // when we are at item 2.. we will try to find its position from 0..1 and see if it needs insertion
  // when we will reach end (index 4), we will find its place, insert (if required) and whole list is sorted
  
  class func insertionSort(inArray: inout [Int]) {
    
    for index in 1...inArray.count - 1 { // goto 1...4
      
      let insertLocation = findLocationInSortedArrayFor(itemAt: index, inArray: inArray)
            
      if insertLocation != index {
        let saveItemAtIndex = inArray[index]
        for moveIndex in (insertLocation+1...index).reversed() {
          inArray[moveIndex] = inArray[moveIndex-1]
        }
        
        inArray[insertLocation] = saveItemAtIndex
      }
      print("after iteration \(index) = \(inArray)")
    }
  }
  
  class func recursiveInsertionSort(inArray: inout [Int], n: Int) {
    if n <= 1 {
      return
    }
    
    recursiveInsertionSort(inArray: &inArray, n: n-1)
    
    let currentItemIndex = n - 1
    let insertLocation = findLocationInSortedArrayFor(itemAt: currentItemIndex, inArray: inArray)
    
    if insertLocation != currentItemIndex {
      let saveItemAtIndex = inArray[currentItemIndex]
      
      for moveIndex in (insertLocation+1...currentItemIndex).reversed() {
        inArray[moveIndex] = inArray[moveIndex-1]
      }
      
      inArray[insertLocation] = saveItemAtIndex
    }
  }
}
