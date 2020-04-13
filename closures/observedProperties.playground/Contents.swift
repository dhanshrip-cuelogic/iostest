/*
 willSet is called just before the value is stored.
 didSet is called immediately after the new value is stored.
 */

struct Amount{
    var totalMoney = 10000
    var withdrawnAmount : Int = 0{
        willSet(newValue){
            if newValue > totalMoney{
                print("Cannot withdraw amount")
            }
            else{
                totalMoney -= newValue
            }
        }
        didSet{
                print("Amount entered for withdrawl is \(withdrawnAmount)")
                print("The total amount is :- \(totalMoney)")
         }
    }
}

var totalAmount = Amount()

totalAmount.withdrawnAmount = 9500
totalAmount.withdrawnAmount = 300
totalAmount.withdrawnAmount = 250

