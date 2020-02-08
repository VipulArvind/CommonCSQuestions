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
  
  // MARK: - Outlets
  
  @IBOutlet weak var lblQuestion: UILabel!
  
  @IBOutlet weak var lbl1: UILabel!
  @IBOutlet weak var textField1: UITextField!
  
  @IBOutlet weak var lbl2: UILabel!
  @IBOutlet weak var textField2: UITextField!
  
  @IBOutlet weak var lblAnswer: UILabel!
  
  // MARK: - vars
  
  public var question: QuestionModel = QuestionModel()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = question.smallTitle
    lblQuestion.text = question.text
    
    if question.isFirstLabelAndTextValid {
      lbl1.isHidden = false
      lbl1.text = question.textForFirstLabel
      textField1.isHidden = false
      textField1.text = ""
    } else {
      lbl1.isHidden = true
      textField1.isHidden = true
    }
    
    if question.isSecondLabelAndTextValid {
      lbl2.isHidden = false
      lbl2.text = question.textForSecondLabel
      textField2.isHidden = false
      textField2.text = ""
    } else {
      lbl2.isHidden = true
      textField2.isHidden = true
    }
  }
  
  @IBAction func goButtonTapped(_ sender: Any) {
    
  }
}
