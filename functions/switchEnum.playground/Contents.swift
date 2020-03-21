enum WeekDays{
    case Mon
    case Tue
    case Wed
    case Thur
    case Fri
    case Sat
    case Sun
}

/*
 this function will display the task for particular day.
 Day is of type WeekDays which is created with enum.
 */
func displayTask(day : WeekDays) -> String{
    switch day {
        case .Mon:
        return "Office work"
    
        case .Tue:
        return "College Project"
    
        case .Wed:
        return "College Presentation"
        
        case .Thur:
        return "Buy Groceries"
        
        case .Fri:
        return "Pay Electicity Bill"
        
        case .Sat:
        return "Workout"
        
        case .Sun:
        return "Picnic"
        
        default:
        return "wrong input"
    }
}

print(displayTask(day: .Tue))
