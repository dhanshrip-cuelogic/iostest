/* In this function we are greeting new people and If we had already greeted
    that person then we will greet them again.
*/

func greetAgain(samePerson: String) -> String {
    return "Hello again \(samePerson)"
}

func greet(name: String, alreadyGreeted: Bool) -> String{
    var show : String
    if (alreadyGreeted==true){
        show = greetAgain(samePerson: name)
    }
    else{
        show = "Hello \(name)"
        }
    return show
}

print("Enter name")
var personName = readLine()
print("Is that person greeted already(true or false)")
var greeted: Bool = Bool(readLine()!)!
print(greet(name: personName!, alreadyGreeted: greeted))

