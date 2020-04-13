protocol Bird {
    var name : String { get }
}

/*
 Extension allows you to define protocol's default behaviour.
 It sets the default behavior for canFly to return true whenever the type conforms to the Flyable protocol.
 */
extension Bird {
    var canFly : Bool { self is Flyable}
}

protocol Flyable {
    func flying()
}

class Eagle : Bird, Flyable {
    var name: String
    func flying() {
        print("Eagle is flying high.")
    }
    
    init(name : String) {
        self.name = name
    }
}

class Penguin : Bird {
    var name: String
    
    init(name : String) {
        self.name = name
    }
}

class Parrot : Bird, Flyable {
    var name: String
    
    func flying() {
        print("Parrot is flying.")
    }
    
    init(name : String) {
        self.name = name
    }
}

let myEagle = Eagle(name: "Eagle")
print("\(myEagle.name) can fly:- \(myEagle.canFly)")
myEagle.flying()
print("----------------------------------------")

let myPenguin = Penguin(name: "Penguin")
print("\(myPenguin.name) can fly:- \(myPenguin.canFly)")
print("----------------------------------------")


let myParrot = Parrot(name: "Parrot")
print("\(myParrot.name) can fly:- \(myParrot.canFly)")
myParrot.flying()
print("----------------------------------------")
