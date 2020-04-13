//
//  SecondViewController.swift
//  passWithClosure
//
//  Created by Dhanshri Pawar on 19/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textString : String = ""
    
    var countCharacter : ((String) -> Int)?
    
    var count : Int = 0
    
    @IBOutlet weak var textFiels: UILabel!
    
    @IBOutlet weak var countField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFiels.text = textString
        
        countField.text = "\((countCharacter?(textString))!)"
        
    }
    
    
}
