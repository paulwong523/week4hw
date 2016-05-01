//
//  ListViewController.swift
//  week 4 hw
//
//  Created by Marisa WONG on 1/05/2016.
//  Copyright © 2016 PW. All rights reserved.
//

import UIKit

class PairViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
  // MARK: IB
  @IBOutlet weak var firstTextField: UITextField!
  
  @IBOutlet weak var secondTextField: UITextField!
  
  @IBOutlet weak var tableView: UITableView!
  var pairData: [[String:String]]?
  
  // MARK: Variables
  override func viewDidLoad() {
    super.viewDidLoad()
    pairData = [[String:String]]()
  }
  
  // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      guard let pairData = pairData else {
        return 0
      }
      return pairData.count
    }
  
  // Second protocol
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    guard let pairData = pairData else {
      return UITableViewCell()
    }
    guard let cell = tableView.dequeueReusableCellWithIdentifier("PairCellView", forIndexPath: indexPath) as? PairCellView else {
      return UITableViewCell()
    }
    let dictionary = pairData[indexPath.row]
    let key = dictionary.keys.first!
    cell.keyLabel.text = key
    cell.valueLabel.text = dictionary[key]
    return cell
    
  }
  // MARK: UITextField Delegate
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  func textFieldDidEndEditing(textField: UITextField) {
    guard firstTextField.text?.characters.count > 0 else {
      return
    }
    guard secondTextField.text?.characters.count > 0 else {
      return
    }
    pairData?.append([firstTextField.text!: secondTextField.text!])
    tableView.reloadData()
    firstTextField.text = ""
    secondTextField.text = ""
  }
  
}
  

