/*
 With optional binding we can check whether an optional is having a value or not with - if let.
 If an optional variable is having a value then it will execute if statement and if it found nil then it will execute the else statement.
 */

var name : String? = nil

if let optionalName = name{  /* It unwraps the optional variable and checks for the value.  */
    
    print("Name of the person is : - \(optionalName).")// no need to unwrap here now.
}
else{
    print("No name found.") // when nil is found.
}


name = "Dhanshri"

if let optionalName = name{
    print("Name of the person is :- \(optionalName).")
}
else{
    print("No name found.")
}
