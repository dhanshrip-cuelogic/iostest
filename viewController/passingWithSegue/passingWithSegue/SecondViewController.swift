/*
 
 Here we have a property named text, whose value will be set by ViewController and then this text will be assigned to the label.
 
 */

import UIKit

class SecondViewController: UIViewController  {
    
    var text : String = ""
    
    @IBOutlet weak var userNameLabel: UITextField!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextLabel.text = text

    }
}
