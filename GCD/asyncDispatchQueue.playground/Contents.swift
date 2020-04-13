import UIKit

func asyncDispatchQueue() {
    
    let queue = DispatchQueue(label: "com.sample")
    
    queue.async {
        for i in 0..<5 {
            print("Async - \(i+1)")
        }
    }
    
    for i in 0..<5 {
        print("Normal - \(i+1)")
    }
    
}

asyncDispatchQueue()
