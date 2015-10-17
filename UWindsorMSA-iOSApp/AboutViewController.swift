//
//  AboutViewController.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-17.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //format nav bar colour
        self.navigationController?.navigationBar.barTintColor = MSAColor.navBarBackgroundColor
        self.navigationController?.navigationBar.translucent = false
        //format nav bar title
        self.navigationController?.navigationBar.tintColor = MSAColor.navBarTextColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : MSAColor.navBarTextColor]
        //set nav bar title
        self.navigationItem.title = "About"
        
        //set background color
        view.backgroundColor = MSAColor.aboutBackgroundColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
