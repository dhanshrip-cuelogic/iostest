//
//  SecondViewController.swift
//  passWithDelegate
//
//  Created by Dhanshri Pawar on 19/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedName : String = ""
    
    var delegate : SendDataBack?

    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var showStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text.text = receivedName

       
    }

    @IBAction func goBack(_ sender: Any) {
        
        delegate?.showRecievedData(data: receivedName)
        
        showStatus.text = "Username has been sent."
        
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
