//
//  Family.swift
//  FamilyScoop
//
//  Created by Patrick Bellot on 8/22/17.
//  Copyright © 2017 Polestar Interactive LLC. All rights reserved.
//

import Foundation
import UIKit

struct Member {
  var name = ""
  var age = ""
  var hometown = ""
  var image = UIImage()
  var backgroundColor = UIColor()
  var textColor1 = UIColor()
  var textColor2 = UIColor()
  
  static func createMember() -> [Member]{
    
    let pat = Member(name: "Patrick Bellot", age: "39", hometown: "The Berry", image: UIImage(named: "pat.jpg")!, backgroundColor: UIColor(red: 0.278, green:0.310, blue:0.451, alpha:1.00), textColor1: .white, textColor2: .black)
    let bre = Member(name: "Briana Bellot", age: "30", hometown: "Mississippi", image: UIImage(named: "bre.jpg")!, backgroundColor: UIColor(red: 0.667, green:0.902, blue:0.910, alpha:1.00), textColor1: .white, textColor2: .black)
    let teagan = Member(name: "Teagan Bellot", age: "4", hometown: "Fairyland", image: UIImage(named: "teagan.jpg")!, backgroundColor: UIColor(red: 0.816, green:0.800, blue:0.796, alpha:1.00), textColor1: .white, textColor2: .black)
    let miles = Member(name: "Miles Bellot", age: "1", hometown: "Parts Unknown", image: UIImage(named: "miles.jpg")!, backgroundColor: UIColor(red: 1.000, green:0.996, blue:0.949, alpha:1.00), textColor1: .darkGray, textColor2: .black)
    
    return [pat, bre, teagan, miles]
  }
}
