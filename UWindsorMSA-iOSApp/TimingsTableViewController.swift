//
//  TimingsTableViewController.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-16.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit
import SwiftyJSON

class TimingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //format nav bar colour
        self.navigationController?.navigationBar.barTintColor = MSAColor.navBarBackgroundColor
        self.navigationController?.navigationBar.translucent = false
        //format nav bar title
        self.navigationController?.navigationBar.tintColor = MSAColor.navBarTextColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : MSAColor.navBarTextColor]
        //set nav bar title
        self.navigationItem.title = "Prayer Timings"
        
        //set tableview color
        tableView.backgroundColor = MSAColor.timingsBackgroundColor
        
        //set data
        if let path = NSBundle.mainBundle().pathForResource("prayer_data", ofType: "json") {
            if let data = NSData(contentsOfFile: path) {
                let json = JSON(data: data, options: NSJSONReadingOptions.AllowFragments, error: nil)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

   
}
