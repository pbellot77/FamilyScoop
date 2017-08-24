//
//  MemberViewController.swift
//  FamilyScoop
//
//  Created by Patrick Bellot on 8/23/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISplitViewControllerDelegate {

  @IBOutlet weak var tableView: UITableView!
  
  var members = Member.createMember()
  var selectedMember = Member()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.dataSource = self
    self.tableView.delegate = self
    
    self.splitViewController?.preferredDisplayMode = .allVisible
    self.splitViewController?.delegate = self
  }
  
  func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
    return true
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
    let member = self.members[indexPath.row]
    self.selectedMember = member
    self.performSegue(withIdentifier: "moveToDetailSegue", sender: nil)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let detailVC = segue.destination as! MemberDetailViewController
    detailVC.member = self.selectedMember
  }
}// end of class
