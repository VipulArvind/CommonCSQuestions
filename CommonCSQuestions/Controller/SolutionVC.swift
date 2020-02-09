//
//  SolutionVC.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// SolutionVC
//      VC for show casing the solution for selected question
//
//

import UIKit

class SolutionVC: UIViewController {
  
  // MARK: - Outlets
  
  @IBOutlet weak var lblQuestion: UILabel!
  
  @IBOutlet weak var lbl1: UILabel!
  @IBOutlet weak var textField1: UITextField!
  
  @IBOutlet weak var lbl2: UILabel!
  @IBOutlet weak var textField2: UITextField!
  
  @IBOutlet weak var lblAnswer: UILabel!
  @IBOutlet weak var viewSuccessIndicator: UIView!
  
  
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
    
    lblAnswer.text = ""
  }
  
  @IBAction func goButtonTapped(_ sender: Any) {
    
    if let firstString = firstString(),
      let secondString = secondString() {
        let (retString, retBool) =  QuestionsManager.shared.getSolution(questionID: question.questionID, string1: firstString, string2: secondString)
      if retBool {
        viewSuccessIndicator.backgroundColor = .green
      } else {
        viewSuccessIndicator.backgroundColor = .red
      }
      self.lblAnswer.text = retString
    }
  }
  
  private func firstString() -> String? {
    
    if self.question.isFirstLabelAndTextValid {
      return textField1.text
    }
    
    return ""
  }
    
  private func secondString() -> String? {
    if self.question.isSecondLabelAndTextValid {
      return textField2.text
    }
    
    return ""
  }
}
