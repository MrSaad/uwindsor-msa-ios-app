//
//  TabsViewController.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-16.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class TabsViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //set tab bar colours
        UITabBar.appearance().barTintColor = MSAColor.tabBarBackgroundColor
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: MSAColor.tabBarItemNormalColor], forState: .Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: MSAColor.tabBarItemSelectedColor], forState: .Selected)
        tabBar.tintColor = MSAColor.tabBarItemSelectedColor
        
        //set home page as default
        self.selectedIndex = 2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
