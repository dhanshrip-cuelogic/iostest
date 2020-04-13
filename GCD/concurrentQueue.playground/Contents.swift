import UIKit

func concurrentQueue() {

    let queue = DispatchQueue(label: "com.sample", qos: .userInitiated, attributes: .concurrent)

    queue.async {
        for i in 0..<5 {
            print("Async - \(i+1)")
        }
    }
    
    queue.async {
        for i in 0..<5 {
            print("Async - \(i+1)")
        }
    }


}

concurrentQueue()
