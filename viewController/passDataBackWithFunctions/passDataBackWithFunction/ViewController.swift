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
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var goToNextScreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func printMessage(data : String) {
        
        message.text = data
        
    }
    
    @IBAction func goToNextScreen(_ sender: UIButton) {
        
        text = "Dhanshri"
        
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        vc.text = text
        vc.firstVC = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

