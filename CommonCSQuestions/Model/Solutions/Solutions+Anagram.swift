//
//  Solutions+Anagram.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit
import Foundation

extension Solutions {
  
  class func anagram(string1: String, string2: String) -> Bool {
    return (string1.sorted() == string2.sorted())
  }
}
