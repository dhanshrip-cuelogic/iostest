
enum Errors : Error {
case indexOutOfRange
}

print("Enter the size of array")
var arraySize = Int(readLine()!)!
var array = [Int?] (repeating: nil, count: arraySize)

func showArrayElement() throws {


    print("enter the position to display the element")
    let index = Int(readLine()!)!

    if index<arraySize {
        print(array[index])
    }
    else {
        throw Errors.indexOutOfRange
    }
}

do {

    try showArrayElement()

}catch Errors.indexOutOfRange {
       print("Index out of range")
    }

