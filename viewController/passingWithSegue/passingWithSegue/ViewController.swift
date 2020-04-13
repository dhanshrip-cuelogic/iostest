/*
 
 From viewController we are sending a username which will be displayed on the label of SecondViewController which is having default value as "Label".
 
 In ViewController class we have a property called name, and a button.
 On clicking action of that button the name property will be assigned with the value as "Dhanashri" and will be send to the text property of SecondViewController to display that name on the label.
 */


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moveToNext: UIButton!
    
    var name : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func moveToNext(_ sender: UIButton) {
        
        performSegue(withIdentifier: "showUsername", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        name = "Dhanashri"
        
        if segue.identifier == "showUsername" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.text = name
            
        }
    }
}

