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

class QuestionViewController: UIViewController, ConstraintRelatableTarget {
    var amount = 0.0
    lazy var addFunds: UITextField = {
           let textfield = UITextField()
           textfield.placeholder = "                                         "
           textfield.textAlignment = .center
           textfield.borderStyle = .roundedRect

        textfield.addTarget(self, action: #selector(QuestionViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
           return textfield
       }()
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        amount = Double(addFunds.text!) ?? 0.0
        print(amount)
        User.name = addFunds.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let question_label = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 300))
        question_label.text = "1. Total Population"
        question_label.numberOfLines = 3
        question_label.font = UIFont(name: "BanglaSangamMN", size: 16)
        question_label.textColor = .gray
        
        let img = UIImage(named: "population.png")
        let imgview = UIImageView()
        imgview.contentMode = UIView.ContentMode.scaleAspectFit
        imgview.frame.size.width = 20
        imgview.frame.size.height = 20
//        imgview.center = self.view.center
        imgview.image = img
            
        self.view.addSubview(question_label)
        self.view.addSubview(addFunds)
        self.view.addSubview(imgview)
        
        question_label.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(20)
        }
        addFunds.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(60)
        }
        imgview.snp.makeConstraints { (make) -> Void in
            make.bottom.equalTo(view).offset(-10)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            
        }
    }
    

}


