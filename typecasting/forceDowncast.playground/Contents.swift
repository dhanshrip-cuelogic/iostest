/*
Here we are having a superclass - Employee which is having various subclass - Developer, Manager, Accountant, HR.
We are having an array into which we are storing details of employees for different departments.
We are displaying all details of employees who are developers by downcasting with 'as!'.
 */

class Employee {
    var empName : String
    init(empName : String) {
        self.empName = empName
    }
}

class Developer : Employee {
    var deptId : Int
    func work() {
        print("Working as a Developer.")
    }
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
}

class Manager : Employee {
    var deptId : Int
    func work() {
        print("Working as a Manager.")
    }
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
    
}

class Accountant : Employee {
    var deptId : Int
    func work() {
        print("Working as an Accountant.")
    }
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
    
}

class HR : Employee {
    var deptId : Int
    func work() {
        print("Working as a HR.")
    }
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
    
}

var employeeList = [
    Developer(empName: "Developer1", deptId: 101),
    Manager(empName: "Manager1", deptId: 102),
    Accountant(empName: "Accountant1", deptId: 103),
    HR(empName: "HR1", deptId: 104),
    Developer(empName: "Developer2", deptId: 101),
    Developer(empName: "Developer3", deptId: 101),
    Developer(empName: "Developer4", deptId: 101),
]

for employee in employeeList
{
    if employee is Developer {
        
        let emp = employee as! Developer                                // force downcasting with - 'as!'
        
        print("Name:- \(emp.empName)")
        print("Dept no. :- \(emp.deptId)")
        emp.work()
        print("----------------------------------")
        
    }
}



