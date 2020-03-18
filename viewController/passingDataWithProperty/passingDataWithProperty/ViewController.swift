//
//  ViewController.swift
//  passingDataWithProperty
//
//  Created by Dhanshri Pawar on 17/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text : String = ""
    
    @IBOutlet weak var goToNextScreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func goToNextScreen(_ sender: UIButton) {
        
        text = "Hello from Dhanshri!!!"
        
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        vc.text = text
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

