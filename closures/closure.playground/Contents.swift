/*
 Use of map() without closure.
 
 Here we have to increment each array element by 1.
 
 */

var array = [1,2,3,4,5,6]

func addOne(num : Int) -> Int{
    return num + 1
}

var arr = array.map(addOne)
print(arr)

/*
Use of map() with closure.

Here we have to increment each array element by 1.
*/

var arr1 = arr.map({(num : Int) -> Int in
    return num + 1
})
print(arr1)


var arr2 = arr1.map({(num : Int) in
    return num + 1
})
print(arr2)


var arr3 = arr2.map({(num) in
    return num + 1
})
print(arr3)


var arr4 = arr3.map({(num) in num + 1})
print(arr4)


var arr5 = arr4.map{$0 + 1}
print(arr5)
