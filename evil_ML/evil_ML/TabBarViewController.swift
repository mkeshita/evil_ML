//
//  TabBarViewController.swift
//  evil_ML
//
//  Created by Meera Rachamallu on 5/2/20.
//  Copyright © 2020 Meera Rachamallu. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstViewController = ViewController()
                
        firstViewController.tabBarItem = UITabBarItem(title: "Learn", image: UIImage(), tag: 0)

        let secondViewController = MapViewController()

        secondViewController.tabBarItem = UITabBarItem(title: "Map", image: UIImage(), tag: 1)

        let tabBarList = [firstViewController, secondViewController]

        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
