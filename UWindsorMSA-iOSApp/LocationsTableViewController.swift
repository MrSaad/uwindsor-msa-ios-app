//
//  LocationsTableViewController.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-17.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    let locNames = ["Education Gym", "Multi-Faith Space (MFS)", "CEI: Engineering Building"]
    let locLocations = ["Vanier Hall: Winclare A", "CAW: Bottom Floor", "Brothers: Rm 3010 | Sisters: Rm. 3011"]
    let locExtraInfo = ["Jummah", "", ""]

    override func viewDidLoad() {
        super.viewDidLoad()

        //format nav bar colour
        self.navigationController?.navigationBar.barTintColor = MSAColor.navBarBackgroundColor
        self.navigationController?.navigationBar.translucent = false
        //format nav bar title
        self.navigationController?.navigationBar.tintColor = MSAColor.navBarTextColor
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : MSAColor.navBarTextColor]
        //set nav bar title
        self.navigationItem.title = "Locations"
        
        //set tableview color
        tableView.backgroundColor = MSAColor.locationsBackgroundColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("locationTableCell", forIndexPath: indexPath) as! LocationsTableViewCell
        
        
        cell.locName.text! = locNames[indexPath.row]
        cell.locLocation.text! = locLocations[indexPath.row]
        cell.locExtraInfo.text! = locExtraInfo[indexPath.row]
        
        return cell
    }

    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

}
