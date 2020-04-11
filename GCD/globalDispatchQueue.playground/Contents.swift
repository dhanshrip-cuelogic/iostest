import UIKit

func globalQueue() {
    
    let mainQueue = DispatchQueue.main
    let globalQueue = DispatchQueue.global()
    
    mainQueue.async {
        for i in 0..<5{
            print("Main - \(i+1)")
        }
    }
    
    globalQueue.async {
        for i in 0..<5 {
            print("Global - \(i+1)")
        }
    }
    
}

globalQueue()
