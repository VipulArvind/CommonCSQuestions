//
//  ViewController.swift
//  CommonCSQuestions
//
//  Created by Vipul Arvind on 2/8/20.
//  Copyright © 2020 Vipul Arvind. All rights reserved.
//

//
// ViewController
//      VC for home screen
//
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Outlets
  @IBOutlet weak var CVQuestions: UICollectionView!
  
  // MARK: - vars
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

//
// extension for UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
//

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return QuestionsManager.shared.count()
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: reuseIdentifier, for: indexPath) as? QuestionsCell
      else {
        preconditionFailure("Invalid cell type")
    }
    
    guard
      let aQuestion = QuestionsManager.shared.question(at: indexPath.row)
      else {
        return cell
    }
    
    cell.updateValues(question: aQuestion)
    
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let minSpacingCells: CGFloat = 1.0
    return CGSize(width: CVQuestions.frame.width/2 - (minSpacingCells + 1), height: 50.0)
  }
}

extension ViewController {  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if let destination = segue.destination as? SolutionVC {
        guard
          let index = CVQuestions.indexPathsForSelectedItems?.first,
          let aQuestion = QuestionsManager.shared.question(at: index.row)
            else {
              return
          }
          destination.question = aQuestion
    }
  }
}
