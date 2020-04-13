//
//  ViewController.swift
//  passWithNotification
//
//  Created by Dhanshri Pawar on 20/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    static let notificationName = Notification.Name("myNotification")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: ViewController.notificationName, object: nil)
    }
    
    @IBAction func goToNext(_ sender: Any) {
        
        performSegue(withIdentifier: "toNotify", sender: self)
    }
    
    @objc func onNotification(notification : Notification) {
        print("\((notification.userInfo)!)")
    }
}

