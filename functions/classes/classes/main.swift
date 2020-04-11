let animal = Animal(n: "Horse")
animal.name = "Leopard"
/*
 If the object is created with let then how we are able to change the value??
 */
print(animal.name)
animal.eat()
animal.sleep()
animal.move()

print("-----------------------------")

var bird = Bird(n: "Parrot")

print(bird.name)
bird.eat()
bird.sleep()
bird.move()

var arr = [animal, bird]
