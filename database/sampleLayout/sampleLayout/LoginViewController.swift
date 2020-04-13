//
//  LoginViewController.swift
//  sampleLayout
//
//  Created by Dhanshri Pawar on 03/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class LoginViewController : UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    
     let userDefault = UserDefaults.standard
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func LoginButton(_ sender: UIButton) {
        
        let username = userDefault.string(forKey: "username") ?? "Unknown"
        let password = userDefault.string(forKey: "password") ?? "No Password"
                
        if usernameField.text == username && passwordField.text == password
        {
            print("User has been successfully logged in.")
            performSegue(withIdentifier: "RegisterPage", sender: self)
        }
    
    }
    
}
