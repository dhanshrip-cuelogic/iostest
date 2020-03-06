/*
It may happen that we do not have any value for any property at the time of declaration but it may have any value at later stage.
  So if we provide nil then we can get an error. To prevent that we use ? after variable type to show that this variable can be nil but if a user wishes to change the value then he can change it to any string value.
*/

var name : String? = nil
print(name)

name  = "Dhanshri"
print(name) // Here,we get the value of name in a container.

print(name!)  //Force Unwrapping - To get the value of the optional variable we have to unwrap it.

name = nil
//print(name!)     Error - Unexpectedly found nil while unwrapping an Optional value


//check for nil value to avoid nil while unwrapping an Optional value.
if name != nil {
    print(name!)
}
else{
    print("No value found.")
}

name = "Dhanshri"
if name != nil {
    print(name!)
}
else{
    print("No value found.")
}



 
