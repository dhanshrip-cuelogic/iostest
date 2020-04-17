//
//  RegisterViewController.swift
//  firebaseTest
//
//  Created by Dhanshri Pawar on 17/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        if let email = emailTextField.text , let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print("Error while registering user- \(error)")
                } else {
                    self.performSegue(withIdentifier: "fromRegisterToFinalPage", sender: self)
                    }
            }
        }
        
    }
    
}
