//
//  ViewController.swift
//  passWithDelegate
//
//  Created by Dhanshri Pawar on 19/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

protocol SendDataBack {
    func showRecievedData(data : String)
}

class ViewController: UIViewController, SendDataBack  {
    
    var sentName : String = ""

    @IBOutlet weak var username: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func goToNextPage(_ sender: UIButton) {
        
        sentName = "Dhanshri"
       // let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let secondVC = SecondViewController()
        
        secondVC.receivedName = sentName
        
        secondVC.delegate = self
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func showRecievedData(data : String) {
        username.text = data
    }
    
}

