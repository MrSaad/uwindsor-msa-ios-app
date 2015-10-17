//
//  LocationsTableViewCell.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-17.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class LocationsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var locName: UILabel!
    @IBOutlet weak var locLocation: UILabel!
    @IBOutlet weak var locExtraInfo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //set colors and format of views
        self.backgroundColor = UIColor.clearColor()
        containerView.backgroundColor = UIColor(white: 1, alpha: 0.33)
        containerView.layer.cornerRadius = 5
        
        //format name text
        locName.textColor = UIColor.blackColor()
        locName.font = UIFont(name: "Helvetica", size: 18)
        //format location text
        locLocation.textColor = UIColor.grayColor()
        locLocation.font = UIFont(name: "Helvetica", size: 14)
        //format extra info text
        locExtraInfo.textColor = UIColor.grayColor()
        locExtraInfo.font = UIFont(name: "Helvetica", size: 16)
        
    }



}
