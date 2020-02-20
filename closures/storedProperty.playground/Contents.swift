/*
 If we declare any variable with 'let' then also we can set and modify the initial value for a stored property during initialization 
*/

struct Area{
    var radius : Float
    let pi : Float
}

//variable structure instance
var area = Area(radius: 2.0, pi: 3.14)

print("Area of circle is \(2 * area.pi * area.radius)")
area.radius = 5.0
print("Area of circle is \(2 * area.pi * area.radius)")

/*
 area.pi = 4     //As pi is a constant stored property we cannot assign it any different value otherwise it will give an error.
 
 */

//constant structure instance
let area1 = Area(radius: 2.0, pi: 3.14)

print("Area of circle is \(2 * area.pi * area.radius)")
/*
 area1.radius = 5.0    // Here as we are having constant instance we cannnot change its stored properties. This is beacuse structures are of value                                 types. When an instance of a value type is marked as a constant it makes all of its properties as constant.
 */
