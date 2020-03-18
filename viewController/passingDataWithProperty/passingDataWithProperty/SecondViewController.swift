//
//  SecondViewController.swift
//  passingDataWithProperty
//
//  Created by Dhanshri Pawar on 17/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text : String = ""
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel?.text = text
       
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
