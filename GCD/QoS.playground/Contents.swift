import UIKit

func dispatchQueue() {
    let queue1 = DispatchQueue(label: "com.sample1", qos: .userInitiated)
    let queue2 = DispatchQueue(label: "com.sample2", qos: .background)
    
    queue1.async {
           for i in 0..<10 {
               print("userInitiated - \(i+1)")
           }
       }
       
    
    queue2.async {
        for i in 0..<10 {
            print("Background - \(i+1)")
        }
    }
}

dispatchQueue()
