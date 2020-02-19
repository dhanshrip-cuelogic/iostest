// for loop on array
var fruits = ["Apple", "Pear", "Orange"]
for fruit in fruits {
    print(fruit)
}
print("------------------------")

// for loop on set
var fruitSet: Set = ["Apple", "Pear", "Orange"]
for setitem in fruitSet {
    print(setitem)
}
print("------------------------")

//for loop on dictionary
var contacts = ["person1": 1234, "person2": 5678]
for name in contacts {
    print(name.key)
}

for number in contacts {
    print(number.value)
}
print("------------------------")

// for loop on string
var text = "Hello"
for letter in text {
    print(letter)
}
print("------------------------")


// for loop on range
var range = 1...5
for num in range {
    print(num)
}
print("------------------------")


// for loop on range
var range1 = 1...5
for _ in range1 {
    print("Hello")
}
print("------------------------")


// while loop
var range2 = 5
var i=1
while i<=range2 {
    print("Hii....\(i)")
    i+=1
}
print("------------------------")
