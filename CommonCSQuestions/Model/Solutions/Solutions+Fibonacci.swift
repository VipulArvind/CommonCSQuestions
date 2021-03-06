//
//  Solutions+Fibonacci.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

extension Solutions {
  
  class func fibonacciItem(at: Int) -> Int {
    return (at == 0 || at == 1) ? at : fibonacciItem(at: at - 1) + fibonacciItem(at: at - 2)
  }
}
