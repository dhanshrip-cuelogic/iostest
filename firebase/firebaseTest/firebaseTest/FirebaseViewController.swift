//
//  FirebaseViewController.swift
//  firebaseTest
//
//  Created by Dhanshri Pawar on 17/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class FirebaseViewController: UIViewController {

    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        navigationItem.title = "Firebase"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButton(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
