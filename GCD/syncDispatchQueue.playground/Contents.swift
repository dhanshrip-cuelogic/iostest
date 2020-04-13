import UIKit

func syncDispatchQueue() {
    
    let queue = DispatchQueue(label: "com.sample")
    
    queue.sync {
        for i in 0..<5 {
            print("Sync - \(i+1)")
        }
    }
    
    for i in 0..<5 {
        print("Normal - \(i+1)")
    }
    
}

syncDispatchQueue()

