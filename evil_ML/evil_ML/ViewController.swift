//
//  ViewController.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/7/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    

    var circle_colors = [UIColor.lightGray.cgColor, UIColor.lightGray.cgColor, UIColor.lightGray.cgColor]
    var circle_ptr = 0
    let navigation_controller = UINavigationController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 246, green: 247, blue: 251, alpha: 1)
        let backButton = backButtonView()
        backButton.addTarget(self, action: #selector(backButtonAction(_:)), for: .touchUpInside)
        let question = Question1View()
        let progress_bar = progressBarView(circle_colors: circle_colors)
        view.addSubview(backButton)
        view.addSubview(progress_bar)
        view.addSubview(question)
        
        
        let nextButton = nextButtonView()
        // Set button action
        nextButton.addTarget(self, action: #selector(nextButtonAction(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
        
         backButton.snp.makeConstraints {  (make) -> Void in
            make.left.equalTo(view).offset(20)
            make.top.equalTo(view).offset(40)
            make.right.equalTo(view).offset(-300)
        }
        
        progress_bar.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(40)
            make.top.equalTo(view).offset(40)
            make.right.equalTo(view).offset(-30)
        }
        
        nextButton.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view).offset(40)
            make.bottom.equalTo(view).offset(-50)
            make.right.equalTo(view).offset(-40)
        }
        

        
    }
    @objc func nextButtonAction(_ sender:UIButton!)
    {
        
//        self.present(ViewController3.init(), animated: true, completion: nil)
//        self.navigationController?.pushViewController(ViewController2(), animated: true)
        if circle_ptr < circle_colors.count {
            circle_colors[circle_ptr] = UIColor.blue.cgColor
            circle_ptr += 1
            print(circle_ptr)
        }
        viewDidLoad()
//        self.view.setNeedsDisplay()
        print("next Button tapped")
    }
    
    @objc func backButtonAction(_ sender:UIButton!) {
        if circle_ptr > 0 && circle_ptr <= circle_colors.count {
            circle_ptr -= 1
            circle_colors[circle_ptr] = UIColor.lightGray.cgColor
                   
                    print(circle_ptr)
        }
        viewDidLoad()
//        self.view.setNeedsDisplay()
        print("back Button tapped")
    }

}

