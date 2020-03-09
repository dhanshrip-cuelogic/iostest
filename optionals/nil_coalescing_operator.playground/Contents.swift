/*
 Nil Coalescing operator removes if else statement for using optional value.
 It checks for the optional value, if its present then it will use it else the provided default value will be used.
 */

var name : String?

var newName : String = name ?? "Abc"
print("Default name is :- \(newName)")



name = "Dhanshri"

var newName1 : String = name ?? "Default"
print("Name is :- \(newName1)")
