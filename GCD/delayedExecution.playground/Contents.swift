import UIKit

func delayedExecution() {
    
    let queue = DispatchQueue.main
    
    let delayedInterval = DispatchTimeInterval.seconds(5)
    
    print(Date())
    
    queue.asyncAfter(deadline: .now() + delayedInterval) {
        print(Date())
    }
}

delayedExecution()

