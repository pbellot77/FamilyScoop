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
    
    self.view.backgroundColor = self.member.backgroundColor
    self.imageView.image = self.member.image
    self.nameLabel?.text = self.member.name
    self.ageLabel2?.text = self.member.age
    self.hometownLabel2?.text = self.member.hometown
    
    self.nameLabel?.textColor = self.member.textColor1
    
    self.ageLabel1?.textColor = self.member.textColor1
    self.ageLabel2?.textColor = self.member.textColor2
    
    self.hometownLabel1?.textColor = self.member.textColor1
    self.hometownLabel2?.textColor = self.member.textColor2
    
    self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
    self.imageView.clipsToBounds = true
  }

}
