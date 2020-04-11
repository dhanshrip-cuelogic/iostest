import UIKit
/*
 There is a class called as CandyFactory which will do following task:-
 1. Take Orders.
 2. Prepare Orders.
 3. Transport Orders.
 */

class CandyFactory {

    enum Flavour {
        case Strawberry, Blueberry, Mango, Orange
    }
    // This class will only take orders for production of candy.
    
    var quantity : Int
    var flavour : Flavour
    var deliveryAddress : String
    
    init(quantity : Int, flavour : Flavour, deliveryAddress : String) {
        self.quantity = quantity
        self.flavour = flavour
        self.deliveryAddress = deliveryAddress
        
        prepareOrder()
    }
}

extension CandyFactory {
    
     // This extension will only prepare orders of candy.
    
    func prepareOrder() {
        
        print("Order has been prepared of \(quantity) \(flavour) candies from \(deliveryAddress).....Ready for shipping!!!")
    }
}
extension CandyFactory {
    
     // This extension will only deliver orders of candy.
    
    func transportOrder() {
        print("Order has been successfully delivered.")
    }
}

let makeOrder = CandyFactory(quantity: 10, flavour: .Blueberry, deliveryAddress: "Pune")
makeOrder.transportOrder()
