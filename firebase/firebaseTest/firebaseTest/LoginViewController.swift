//
//  LoginViewController.swift
//  firebaseTest
//
//  Created by Dhanshri Pawar on 17/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginEmailTextField: UITextField!
    
    @IBOutlet weak var loginPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if let email = loginEmailTextField.text , let password = loginPasswordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print("Error while signing in the user- \(error)")
                } else {
                    self.performSegue(withIdentifier: "fromLoginToFinalPage", sender: self)
                }
            }
        }
        
    }
    
}
