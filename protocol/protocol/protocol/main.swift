/*
  - Protocols are blueprints of methods and properties that suit a particular functionality.
  - The protocol can then be adopted by a class or structures to provide an actual implementation of
    those requirements.
  - In protocols only specify the function name and we cannot have any function body.
 
 - www.raywenderlich.com/6742901-protocol-oriented-programming-tutorial-in-swift-5-1-getting-started
 - www.raywenderlich.com/476-design-patterns-on-ios-using-swift-part-2-2#toc-anchor-005
 
 
 */

protocol fullName {

    var fullname : String { get }
}

class Name : fullName {

    var firstName: String
    var lastName: String

    init(firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    var fullname : String {
           return ("Name is :- \(firstName) \(lastName)")
       }

}

var myName = Name(firstName: "Dhanshri", lastName: "Pawar")
print(myName.fullname)


