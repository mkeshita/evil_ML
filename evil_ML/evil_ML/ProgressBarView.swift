//
//  ProgressBarVIew.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 4/13/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

//class ProgressBarViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
func progressBarView(circle_colors: [CGColor]) -> UIView {
    let progress_bar = UIView()
    let center_1 = CGPoint(x: 100, y: 100)
    let center_2 = CGPoint(x: 150, y: 100)
    let center_3 = CGPoint(x: 200, y: 100)
    let circle_1 = UIBezierPath(arcCenter: center_1, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
    let circle_2 = UIBezierPath(arcCenter: center_2, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
    let circle_3 = UIBezierPath(arcCenter: center_3, radius: 3, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
           
           //track layer
    let trackLayer = CAShapeLayer()
    trackLayer.path = circle_1.cgPath
    trackLayer.strokeColor = circle_colors[0]
    trackLayer.lineWidth = 10
    trackLayer.lineCap = CAShapeLayerLineCap.round
    progress_bar.layer.addSublayer(trackLayer)

    let trackLayer_2 = CAShapeLayer()
    trackLayer_2.path = circle_2.cgPath
    trackLayer_2.strokeColor = circle_colors[1]
    trackLayer_2.lineWidth = 10
    trackLayer_2.lineCap = CAShapeLayerLineCap.round
    progress_bar.layer.addSublayer(trackLayer_2)

    let trackLayer_3 = CAShapeLayer()
    trackLayer_3.path = circle_3.cgPath
    trackLayer_3.strokeColor = circle_colors[2]
    trackLayer_3.lineWidth = 10
    trackLayer_3.lineCap = CAShapeLayerLineCap.round
    progress_bar.layer.addSublayer(trackLayer_3)
    return progress_bar
}

//    }
//}
