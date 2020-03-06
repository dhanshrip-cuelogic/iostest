/*
 When we have optional struct or classes, we use optional chaining.
 */

struct PersonalInfo{
    var name : String = "Dhanshri"
    var num = 123
    func welcome() {
        print("Welcome \(name)")
    }
}

var myOptional : PersonalInfo?

myOptional = PersonalInfo()

myOptional?.welcome()
print(myOptional?.num)



