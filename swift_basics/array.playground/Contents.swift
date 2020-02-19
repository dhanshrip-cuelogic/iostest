/*
 initializing array with an array literal containing values of the same type.
*/
var number : Int
var array = [1,2,3,4,5]
number = array[0]
print(number)


var num : Int
var array2 : Array<Int> = [1,2,3,4,5]
num = array2[1]
print(num)


/*
The variable is declared as “an array of int values”, written as [Int]. Because this particular array has specified a value type of Int, it is allowed to store Int values only. Here, the array is initialized with values, written within an array literal.
*/
var num1 : Int
var array3 : [Int]
array3 = [1,2,3,4,5]
num1 = array3[2]
print(num1)




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

