/*
 
 On button click, a text will be sent to next screen which will be displayed on one label and the character count of that string will be displayed on another label.
 
 */
import UIKit

class ViewController: UIViewController {
    
    var textInput : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goToNext(_ sender: UIButton) {
        
        performSegue(withIdentifier: "secondVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        textInput = "Sample String"
        
        let secondVC = segue.destination as! SecondViewController
        secondVC.textString = textInput
        
        secondVC.countCharacter = { text in

            return text.count
        }
        
    }
    
    
}

