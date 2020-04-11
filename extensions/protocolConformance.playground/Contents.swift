protocol Candy {
    func prepareCandy()
    func transportCandy()
}

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
        
        prepareCandy()
        
    }
}

extension CandyFactory : Candy {
    func prepareCandy() {
         print("Order has been prepared of \(quantity) \(flavour) candies from \(deliveryAddress).....Ready for shipping!!!")
        
        transportCandy()
    }
    
    func transportCandy() {
        print("Order has been successfully delivered.")
    }
}

let makeCandy = CandyFactory(quantity: 50, flavour: .Blueberry, deliveryAddress: "Mumbai")
