import UIKit

func sendTwoNumbers() {
    let a : Int? = nil
    let b = 20
    addTwoNumbers(num1 : a ,num2 : b)
}

func addTwoNumbers(num1 : Int?, num2 : Int?) {
    var sum : Int
    guard let a = num1 , let b = num2 else {
        print("No data found for addition")
        return
        }
    sum = a+b
    print("Sum is :- \(sum)")
    
}

sendTwoNumbers()
