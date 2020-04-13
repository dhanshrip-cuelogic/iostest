//
//  ViewController.swift
//  viewController
//
//  Created by Dhanshri Pawar on 13/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecondVC" , sender: self)
    }
    
}

