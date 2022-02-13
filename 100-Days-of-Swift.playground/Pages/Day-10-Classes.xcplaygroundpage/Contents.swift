import Foundation

class Dog{
    var name: String
    var breed: String
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
    func makeNoise(){
        print("Woof!")
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

class Poodle: Dog{    // Inheritance
    init(name: String){
        super.init(name: name, breed: "Poodle")
    }
    override func makeNoise() {  // override func
        print("Yip!")
    }
}
let pooppy = Poodle(name: "Poppy")
pooppy.makeNoise()

final class Cat{   //This means they can’t override your methods
    var name: String
    init(name: String){
        self.name = name
    }
}

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer //point to the same object in memory
singerCopy.name = "Justin Bieber"
print(singer.name)

struct Writer {
    var name = "Richard Bach"
}
var writer = Writer()
print(writer.name)
var writerCopy = writer  // Real Copy, not same memory
writerCopy.name = "Albert Camus"
print(writer.name)

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    deinit {
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3{
    let person = Person()
    person.printGreeting()
}

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)

class Singer3 {
    let name = "Taylor Swift"
}
let taylor2 = Singer3()
// taylor2.name = "Ed Sheeran" // mutability
print(taylor2.name)
