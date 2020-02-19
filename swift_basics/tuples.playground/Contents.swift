var tuple1 = ("Dhanshri", "Pawar", 21)
print(tuple1.0)
print(tuple1.1)
print(tuple1.2)
/*
 once you create a tuple, you cannot append elements to it, because that would change the type of the tuple.
*/
tuple1.2=25
print(tuple1.2)

print("-------------")
var tuple2 = (firstName: "Dhanshri", lastName: "Pawar", age: 21)
print(tuple2.firstName)
print(tuple2.lastName)
print(tuple2.age)


print("-----------------")
var tuple3 : (firstName: String, lastName: String, age: Int)
tuple3 = (firstName: "Dhanshri","",21)
tuple3.lastName = "Pawar"
print(tuple3.firstName)
print(tuple3.lastName)
print(tuple3.age)
