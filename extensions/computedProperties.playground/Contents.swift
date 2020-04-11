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
    
        amount(quantity: quantity, flavour: flavour)
    }
}

extension CandyFactory {
    
    var cost : Int {
        
        switch self.flavour {
        case .Mango:
            return 10
            
        case .Orange:
            return 20
            
        case .Strawberry:
            return 30
            
        case .Blueberry:
            return 40
        
        }

    }
        func amount(quantity : Int, flavour : Flavour) {
            var totalAmount = cost * quantity
            print("The total amount to be paid is Rs.\(totalAmount).")
        }
}

let makeCandy = CandyFactory(quantity: 50, flavour: .Blueberry, deliveryAddress: "Mumbai")

