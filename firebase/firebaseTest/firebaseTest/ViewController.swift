//
//  ViewController.swift
//  firebaseTest
//
//  Created by Dhanshri Pawar on 17/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func registerButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "registerPage", sender: self)
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "loginPage", sender: self)
    }
    
    
}

