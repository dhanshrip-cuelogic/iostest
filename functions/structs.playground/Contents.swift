struct Sample {
    var arr = [1,2,3,4]
    func func1() {
        print("Hello...... Welcome")
    }
}

var mySample = Sample()
mySample.arr.append(5)
mySample.func1()
print("Sample-->\(mySample.arr)")


print("------------------------------------------")


struct Sample1 {
    var arr1 = [1,2,3,4]
    mutating func appendArray1() {
        arr1.append(5)
    }
}

var mySample1 = Sample1()
mySample1.appendArray1()
mySample1.arr1.append(6)
print("Sample1-->\(mySample1.arr1)")
