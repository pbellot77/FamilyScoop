//
//  MemberViewController.swift
//  FamilyScoop
//
//  Created by Patrick Bellot on 8/23/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  var members = Member.createMember()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.dataSource = self
    self.tableView.delegate = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return members.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let member = self.members[indexPath.row]
    
    let cell = UITableViewCell()
    cell.textLabel?.text = member.name
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.performSegue(withIdentifier: "moveToDetailSegue", sender: nil)
  }
  
  
  
  
  
  
  
  
}// end of class
