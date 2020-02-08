//
//  ViewController.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit

/*
 Closure study
 
 Example
 ------------------------------------------------------------
 1. With Function
 
 func backward (_ s1: String, _s2 : String) -> Bool {
  return s1 > s2)
 }
 
 var reversedNames = names.sorted(by: backward)
 ------------------------------------------------------------
 2. Closure Syntax
 
 { (parameters type) -> return type in
    statements
 }
 
 ------------------------------------------------------------
 3. same example with closure
 var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
  return s1 > s2
 })
 ------------------------------------------------------------
 4. same example with closure (infer params and return types
 var reversedNames = names.sorted (by: { s1, s2 in return s1 > s2})
 ------------------------------------------------------------
 5. same example with closure (implicit return
 var reversedName = names.sorted(by: s1, s2 in s1 > s2)
 
 ------------------------------------------------------------
 6. same example with closure (shorthand notation
 reversedNames = names.sorted(by:{ $0 > $1})
 
 */
class SolutionVC: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

  }
}
