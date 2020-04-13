//
//  StoreUserDefaultData.swift
//  sampleLayout
//
//  Created by Dhanshri Pawar on 03/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class StoreUserDefaultData: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func saveData(_ sender: UIButton) {
        
        let username = usernameField.text!
        let password = passwordField.text!
        
    
        userDefault.set(username, forKey: "username")
        userDefault.set(password, forKey: "password")

        print("Data has been successfully saved in UserDefault.")
        
    }
    
    @IBAction func GotoLoginPage(_ sender: UIButton) {
        performSegue(withIdentifier: "loginPage", sender: self)
    }
    
    @IBAction func clearUserDefaultData(_ sender: Any) {
        userDefault.removeObject(forKey: "username")
        userDefault.removeObject(forKey: "password")
        print("Data has been deleted from UserDefault.")
    }
}
