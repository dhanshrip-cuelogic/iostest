/*
 Here we have a superclass Employee and its subclasses as various departments i.e., Developer and Manager.
 Example of upcast
 */

class Employee {
    var empName : String
    func work() {
        print("Working in Cuelogic.")
    }
    init(empName : String) {
        self.empName = empName
    }
}

class Developer : Employee {
    var deptId : Int
    
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
}

class Manager : Employee {
    var deptId : Int
    
    init(empName : String, deptId : Int) {
        self.deptId = deptId
        super.init(empName: empName)
    }
    
}

var employeeList = [
    Developer(empName: "Developer1", deptId: 101),
    Manager(empName: "Manager1", deptId: 102),
    Manager(empName: "Manager2", deptId: 102),
    Developer(empName: "Developer2", deptId: 101),
    Developer(empName: "Developer3", deptId: 101),
]

for employee in employeeList
{
    if employee is Developer {                                  // typechecking with 'is'
        
        let emp = employee as! Developer                        // force dowm]ncasting with 'as!'
        
        print("Name:- \(emp.empName)")
        print("Dept no. :- \(emp.deptId)")
      
        
        let empCompany = emp as Employee                        //upcasting with 'as'
        
        empCompany.work()
        print("----------------------------------")
        
    }
}







