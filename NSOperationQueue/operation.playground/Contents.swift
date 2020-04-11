import Foundation

class operationQueue : Operation {
    
    enum State : String{
        case Ready
        case Executing
        case Finished
        private var keyPath : String {
            get {
                return "is" + self.rawValue
            }
        }
    }

//    let operation1 = BlockOperation {
//                print("Performing operation 1")
//            }


    var state : State  = .Ready{
        willSet {
            print("The state of task will now change to \(newValue.rawValue).")
        }
        didSet {
            print("The current state of task has been changed from \(oldValue.rawValue) to \(self.state.rawValue).")
        }
    }

    override var isAsynchronous: Bool {
        get {
            return true
        }
    }

    override var isExecuting: Bool {
        get {
            return state == .Executing
        }
    }

    override var isFinished: Bool {
        get {
            return state == .Finished
        }
    }

    override func start() {
        if self.isCancelled {
            state = .Finished
        } else {
            state = .Ready
            main()
        }
    }

    override func main() {
        if self.isCancelled {
            state = .Finished
        } else {
            state = .Executing
            print("Performing operation")
            state = .Finished
        
        }
    }

}

let operation = operationQueue()
operation.start()

