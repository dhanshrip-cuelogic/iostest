class Bird : Animal {
    override func move() {
        print("flying..........")
    }
    
    override func eat() {
        super.eat()
        print("eating worms........")
    }
}

