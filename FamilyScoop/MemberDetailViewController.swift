//
//  MemberDetailViewController.swift
//  FamilyScoop
//
//  Created by Patrick Bellot on 8/23/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController {

  var member = Member()
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var ageLabel1: UILabel!
  @IBOutlet weak var ageLabel2: UILabel!
  @IBOutlet weak var hometownLabel1: UILabel!
  @IBOutlet weak var hometownLabel2: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.nameLabel?.text = self.member.name
  }

}
