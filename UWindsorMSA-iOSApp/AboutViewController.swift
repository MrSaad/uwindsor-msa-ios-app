//
//  AboutViewController.swift
//  UWindsorMSA-iOSApp
//
//  Created by Saad Ahmed on 2015-10-17.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    
    @IBOutlet weak var aboutTitle: UILabel!
    @IBOutlet weak var aboutDesc: UILabel!
    
    let aboutTitleText = "Mission Statement"
    let aboutDescText = "The Muslim Students Association of the University of Windsor is a ratified club under the University of Windsor Students’ Alliance. The MSA is based on Islamic ideals of a united effort and brotherhood. The objectives of the MSA are to assist Muslim students in university life according to the Islamic teachings in the Quran and Sunnah. It seeks to provide Muslims with appropriate means to practice Islam, to preserve their identity, and to facilitate meetings, discussions, and celebrations of Islamic festivities among Muslim and non-Muslim students. The MSA will strive to represent Islam on campus, promote friendly relations among the community, and to provide Islamic education to Muslims and non-Muslims in the form of lectures, study circles, Islamic literature, and more."

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
        
        //format about page text
        aboutTitle.font = UIFont(name: "HelveticaNeue", size: 20)
        aboutDesc.font = UIFont(name: "HelveticaNeue", size: 14)
        aboutDesc.textColor = UIColor.grayColor()
        
        //set about page text
        aboutTitle.text! = aboutTitleText
        aboutDesc.text! = aboutDescText

        
    }




}
