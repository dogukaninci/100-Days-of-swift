import Foundation

var age: Int? = nil // it might have no value, optional
age = 38

var name: String? = nil
if let unwrapped = name { //Optional Binding
    print("\(unwrapped.count) letters")
} else{
    print("Missing name")
}

func greet(_ name: String?){
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello \(unwrapped)!")
}
greet("Taylor")

let str = "5"
let num = Int(str)! // Force unwrapping

let age2: Int! = nil // Implicitly unwrapped optionals
let age3 = age2 //no longer need ! sign

func username(for id: Int) -> String? {
    if id == 1{
        return "Taylor Swift"
    }
    else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous" //Nil coalescing, If there isn’t a value – if the optional was nil – then a default value is used instead

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() // optional chaining

enum PasswordError: Error{
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("The password is good")
} catch {
    print("You can't use that password")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

struct Person{
    var id: String
    init?(id: String){
        if(id.count == 9) {
            self.id = id
        } else {
            return nil
        }
    }
}

class Animal { }
class Fish: Animal { }
class Dog: Animal {
    func makeNoise(){
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog{ //Typecasting
        dog.makeNoise()
    }
}
