/*
 Function parameters are constants(let) by default if we change the value of a function parameter from the body of that function it gives compile-time error.
 */
func swapTwoInts(_ a: inout Int,_ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
    print("number 1 = \(a) and number 2 = \(b)")
}
var num1 = 10
var num2 = 20
print("number 1 = \(num1) and number 2 = \(num2)")

/*
 the original values of num1 and num2 are modified by the swapTwoInts function, even though they were originally defined outside of the function.
 */
swapTwoInts(&num1, &num2)
