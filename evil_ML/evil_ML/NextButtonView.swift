//
//  NextButtonView.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/13/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import Foundation
import UIKit

func nextButtonView()-> UIButton {
    let myButton = UIButton(type: .system)
    
    // Position Button
    myButton.frame = CGRect(x: 20, y: 20, width: 100, height: 50)
    // Set text on button
    myButton.setTitle("Next", for: .normal)
    myButton.backgroundColor = UIColor.blue
    myButton.layer.shadowColor = UIColor.blue.cgColor
    myButton.layer.shadowOffset = CGSize(width: 2, height: 2.0)
    myButton.layer.masksToBounds = false
    myButton.layer.shadowRadius = 5.0
    myButton.layer.shadowOpacity = 0.4
    myButton.layer.cornerRadius = 8
    myButton.tintColor = UIColor.white
    
    return myButton
}
