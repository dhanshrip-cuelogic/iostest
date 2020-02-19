func switchCase(n: Int) {
    switch n {
    case 1:
        print("In case 1")
        break
    case 2:
        print("In case 2")
        break
    default:
        print("Wrong input......")
    }
}

print("With Integer Input")
switchCase(n: 1)
switchCase(n: 2)
switchCase(n: 3)

print("------------------------")

func switchCase1(n: String) {
    switch n {
    case "One":
        print("In case One")
        break
    case "Two":
        print("In case Two")
        break
    default:
        print("Wrong input......")
    }
}

print("With String Input")
switchCase1(n: "One")
switchCase1(n: "Two")
switchCase1(n: "Three")

print("------------------------")


func switchCase2(n: Bool) {
    switch n {
    case true:
        print("In case true")
        break
    case false:
        print("In case false")
        break
    }
}

print("With Boolean Input")
switchCase2(n: true)
switchCase2(n: false)
