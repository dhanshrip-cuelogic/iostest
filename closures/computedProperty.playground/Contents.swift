
/*

 Here we are using getter and setter to get the computed number
 */
var number = 2

var computedNumber : Int {
    get {
        return (number*10) - 1
    }
    set{
        number = newValue
    }
}

print("This is first computed value for number \(number) --- \(computedNumber)")
computedNumber = 5
print("The changed number is \(number)")
print("This is first second value for number \(number) --- \(computedNumber)")
