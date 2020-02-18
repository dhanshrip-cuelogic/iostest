func addition(n1: Int , n2: Int){
    print("addition of \(n1) and \(n2) = \(n1+n2)")
}

func subtract(n1: Int , n2: Int){
    print("substraction of \(n1) and \(n2) = \(n1-n2)")
}

func multiply(n1: Int , n2: Int){
    print("multiplication of \(n1) and \(n2) = \(n1*n2)")
}

func division(n1: Int , n2: Int){
    print("division of \(n1) and \(n2) = \(n1/n2)")
}

func calculate(){
    let a = 20
    let b = 10
    addition(n1: a, n2: b)
    subtract(n1: a, n2: b)
    multiply(n1: a, n2: b)
    division(n1: a, n2: b)
}

calculate()
