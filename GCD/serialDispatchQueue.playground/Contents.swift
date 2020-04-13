import UIKit

func serialDispatchQueue() {
    
    let queue = DispatchQueue(label: "com.sample")
    
    queue.async {
        for i in 0..<5 {
            print("Async 1 - \(i+1)")
        }
    }
    
     queue.async {
           for i in 0..<5 {
               print("Async 2 - \(i+1)")
           }
       }
}

serialDispatchQueue()

