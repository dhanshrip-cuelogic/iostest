//
//  ViewController.swift
//  FacebookLoginTest
//
//  Created by Dhanshri Pawar on 15/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // after clicking on this login button it will ask for login details and will print from any one of the case provided below.
    @IBAction func fbLoginButtonClicked(_ sender: UIButton) {
        let manager = LoginManager()
        manager.logIn(permissions: [.publicProfile], viewController: self) { (result) in
               switch result {
               case .cancelled:
                   print("user cancelled.")
                   break
               case .success(let granted, let declined, let token):
                   print("Access token \(token)")
                   print("granted\(granted)")
                   print("declined \(declined)")
                    break
               case .failed(_):
                   print("error in login with facebook.")
                   break
               }
            }
    }
    
}

