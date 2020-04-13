//
//  SecondViewController.swift
//  passDataBackWithProperty
//
//  Created by Dhanshri Pawar on 18/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var text : String = ""
    
    var firstVC : ViewController?
  
    @IBOutlet weak var showText: UITextField!
        
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel?.text = text

    }

    @IBAction func goBack(_ sender: Any) {
        
        firstVC?.printMessage(data: text)
        
        showText.text = "This data has been sent to previous page."
 
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
