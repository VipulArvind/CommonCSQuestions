//
//  ViewController.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var CVQuestions: UICollectionView!
  
  private let reuseIdentifier = "QuestionsCell"

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    makeListOfQuestions()
    
    CVQuestions.delegate = self
    CVQuestions.dataSource = self
    
    updateUI()
  }
  
  func makeListOfQuestions() {
  }
  
  func updateUI() {
    CVQuestions.reloadData()
  }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return QuestionsManager.shared.questionsCount()
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: reuseIdentifier, for: indexPath) as? QuestionsCell
      else {
        preconditionFailure("Invalid cell type")
    }
    
    cell.updateValues(questionText: QuestionsManager.shared.questionTextFor(itemAtIndex: indexPath.row))
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: CVQuestions.frame.width, height: 100.0)
  }
}
