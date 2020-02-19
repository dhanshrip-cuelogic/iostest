
/*
array Challenge- i/p - [45,73,195,53]
           o/p - [(45*73), (73*195), (195*53)]
           o/p - [3285, 14235, 10335, 2385]
*/

//var numbers = [45,73,195,53]

print("Please enter array count")
var arrayCount = Int(readLine()!)!
var numbers = [Int]()
var x=0
print("Please enter \(arrayCount) number")
while x<arrayCount {
    
        let arrayInput = Int(readLine()!)!
        numbers.append(arrayInput)
        x+=1
    }
    
var i = 0;
var j = 1;
var computed = [Int]()

while (j<arrayCount) {
     computed.append(numbers[i] * numbers[j])
     i+=1
     j+=1
        if(i==3)
        {
            computed.append(numbers[i] * numbers[0])
        }
    }
    print(computed)
