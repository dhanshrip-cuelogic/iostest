import UIKit

let dispatchWorkItem = DispatchWorkItem {
    print("WorkItem Executed")
}

func dispatchQueue() {
    
    let queue = DispatchQueue.global()
    
    queue.async {
        
        for i in 0..<5 {
            print("\(i+1)")
        }
        
        dispatchWorkItem.perform()
    }
}

dispatchQueue()
