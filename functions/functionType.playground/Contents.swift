func addition(_ a: Int, _ b: Int) -> Int {
    return a+b
}

var add : (Int, Int) -> Int = addition

print("addition is \(add(2,3))")
