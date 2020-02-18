/*
 initializing array with an array literal containing values of the same type.
*/
var sampleVariable : Int
var sampleArray = [1,2,3,4,5]
sampleVariable = sampleArray[0]
print(sampleVariable)


var sampleVariable2 : Int
var sampleArray2 : Array<Int> = [1,2,3,4,5]
sampleVariable2 = sampleArray2[1]
print(sampleVariable2)


/*
The variable is declared as “an array of int values”, written as [Int]. Because this particular array has specified a value type of Int, it is allowed to store Int values only. Here, the array is initialized with values, written within an array literal.
*/
var sampleVariable3 : Int
var sampleArray3 : [Int]
sampleArray3 = [1,2,3,4,5]
sampleVariable3 = sampleArray[2]
print(sampleVariable3)


/*
array Challenge- i/p - [45,73,195,53]
           o/p - [(45*73), (73*195), (195*53)]
           o/p - [3285, 14235, 10335, 2385]
*/

var numbers = [45,73,195,53]
var i = 0;
var j = 1;
var computed = [Int]()
while (j<4) {
 computed.append(numbers[i] * numbers[j])
 i+=1
 j+=1
    if(i==3)
    {
        computed.append(numbers[i] * numbers[0])
    }
}

print(computed)


/*
random challenge- to create a 6 random letter password from alphabets array.
*/

var alphabets = ["a","b","c","d","e","f","g"]
var password = ""
var randomLetter : String?
//var randomLetter = ""

var a=0
while (a<6) {
    randomLetter = alphabets.randomElement()
    password = password+randomLetter!
    a+=1
}
print(password)
