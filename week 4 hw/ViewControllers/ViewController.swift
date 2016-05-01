//
//  ViewController.swift
//  week 4 hw
//
//  Created by Marisa WONG on 1/05/2016.
//  Copyright © 2016 PW. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var firstTextField: UITextField!
  
  // MARK: Variables
  
  var dataList: Array? = [""]
  override func viewDidLoad() {
    super.viewDidLoad()
    dataList = Array?()  // Sorry I don't  know what to do, ran out of time

  
  }
  
  

  // MARK: UITableViewDataSource Protocols
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let dataList = dataList else {
      return 0
    }
   
  }
  
 
  // Protocol 2
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  {
    guard let dataList = dataList else {
      return UITableViewCell()
    }
    guard let cell = tableView.dequeueReusableCellWithIdentifier("CellView", forIndexPath: indexPath) as? CellView else {
      return UITableViewCell()
    }
   
    
  }

}

