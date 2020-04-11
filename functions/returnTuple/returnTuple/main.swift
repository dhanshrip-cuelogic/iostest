/*
 This function will take Integer Array as parameter and will return a tuple having min and max values in it.
 */

func minMax(from array : [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for num in array {
        if  num < currentMin {
            currentMin = num
        }
        else if num > currentMax {
            currentMax = num
        }
         
    }
    return (min: currentMin, max: currentMax)
}

var intArray = [Int]()
print("Enter array count")
var arrayCount = Int(readLine()!)!
print("enter values")
for _ in 1...arrayCount {
    let value = Int(readLine()!)!
    intArray.append(value)
}
var display = minMax(from : intArray)
print("Max - \(display.max) and Min - \(display.min)")
