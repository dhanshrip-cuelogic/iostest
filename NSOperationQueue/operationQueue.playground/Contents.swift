import Foundation

    func operationQueue() {
        let queue = OperationQueue()

        let operation1 = BlockOperation {
            print("Performing operation 1")
        }
        let operation2 = BlockOperation {
            print("Performing operation 2")
        }

        operation1.addDependency(operation2)

        queue.addOperation(operation1)
        queue.addOperation(operation2)

    }
    
operationQueue()
