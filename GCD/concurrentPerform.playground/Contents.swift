import UIKit

//To execute same code for number of times concurrentPerform is used.

func concurrentPerform() {
    
    DispatchQueue.concurrentPerform(iterations: 5) { (i) in
        print("\(i+1)")
    }
    
}
concurrentPerform()
