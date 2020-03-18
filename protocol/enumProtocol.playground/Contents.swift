protocol Bird {
    var name : String { get }
    
}

extension Bird {
    var canFly : Bool { self is Flyable}
}

protocol Flyable {
    func flying()
}

enum BirdNames : Bird, Flyable {
   
    case Eagle
    case Penguin
    case Parrot
    
    var name : String {
        switch self {
        case .Eagle:
            return "Eagle"
            
        case .Penguin:
            return "Penguin"
            
        case .Parrot:
            return "Parrot"
        }
    }
        
    func flying() {
           switch self {
           case .Eagle:
               print("Eagle is flying.")
               
           case .Penguin:
               print("Penguin cant fly.")
               
           case .Parrot:
               print("Parrot is flying.")
           
           }
       }
}

// Overriding Default Behaviour
extension BirdNames {
    var canFly: Bool {
        self != .Penguin
    }
}

let myBird = BirdNames.Eagle
print("\(myBird.name) can fly:- \(myBird.canFly)")
myBird.flying()

let mySecondBird = BirdNames.Parrot
print("\(mySecondBird.name) can fly:- \(mySecondBird.canFly)")
mySecondBird.flying()


let myAnotherBird = BirdNames.Penguin
print("\(myAnotherBird.name) can fly:- \(myAnotherBird.canFly)")
myAnotherBird.flying()

