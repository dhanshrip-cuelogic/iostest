//
//  ViewController.swift
//  keyChainExample
//
//  Created by Dhanshri Pawar on 04/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setKeyField: UITextField!
    
    @IBOutlet weak var setValueField: UITextField!
    
    
    @IBOutlet weak var getKeyField: UITextField!
    
    @IBOutlet weak var printValueField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func saveKeyValue(_ sender: Any) {
        
        let setKeyVaule : Bool = KeychainWrapper.standard.set(setValueField.text!, forKey: setKeyField.text!)
        print("The data has been saved into keychain successfully : \(setKeyVaule)")
        
    }
    
    @IBAction func getData(_ sender: Any) {
        
        let value = KeychainWrapper.standard.string(forKey: printValueField.text!)
        print(value!)
        
    }
    
    @IBAction func removeKey(_ sender: Any) {
        let removeKey : Bool = KeychainWrapper.standard.removeObject(forKey: getKeyField.text!)
        print("The key has been successfully deleted : \(removeKey)")
    }
    
}

