//
//  QuestionsView.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/13/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class Question2ViewController: UIViewController, ConstraintRelatableTarget {
    var amount = 0.0
    lazy var addFunds: UITextField = {
           let textfield = UITextField()
           textfield.placeholder = "                                         "
           textfield.textAlignment = .center
           textfield.borderStyle = .roundedRect

        textfield.addTarget(self, action: #selector(Question2ViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
           return textfield
       }()
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        amount = Double(addFunds.text!) ?? 0.0
        print(amount)
        User.city = addFunds.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let question_label = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 300))
        question_label.text = "2. Which city do you live in"
        question_label.numberOfLines = 3
        question_label.font = UIFont(name: "BanglaSangamMN", size: 16)
        question_label.textColor = .gray

            
        self.view.addSubview(question_label)
        self.view.addSubview(addFunds)
        
        question_label.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(20)
        }
        addFunds.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(60)
        }
    }
    

}


