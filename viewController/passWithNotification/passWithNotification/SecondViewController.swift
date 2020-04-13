//
//  SecondViewController.swift
//  passWithNotification
//
//  Created by Dhanshri Pawar on 20/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondaryViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["Name": "Dhanshri","EmpId" : "Cue10018"])
    }
    
}
