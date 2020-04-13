//
//  SecondViewController.swift
//  viewController
//
//  Created by Dhanshri Pawar on 13/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    @IBOutlet weak var Welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "againMoveForward", sender: self)
        
    }
    
    
}
