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
  
  class func lonelyInteger(inArray: [Int]) -> Int {
    var result = 0

    for item in inArray {
      result = result ^ item
    }
    
    return  result
  }
}
