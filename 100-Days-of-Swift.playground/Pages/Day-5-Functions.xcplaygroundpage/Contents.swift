import Foundation

func printHelp(){
    let message = """
Welcome to my App!
Run this app inside a directory of image and
Myapp will reseize them all into thumbnails
"""
    print(message)
}
printHelp()
print("Hello World")

func square(number: Int){
    print(number * number)
}
square(number: 4)

func squareReturn(number: Int) -> Int {
    return number * number
}
let result = squareReturn(number: 8)
print(result)

func sayHello(to name: String){ //Swift lets us provide two names for each parameter: one to be used externally when calling the function,                                  and one to be used internally inside the function.
    print("Hello, \(name)")
}
sayHello(to: "Taylor")

func greet(_ person: String){
    print("Hello, \(person)")
}
greet("Taylor")
func greet(_ person: String, nicely: Bool = true){
    if nicely == true{
        print("Hello \(person)")
    } else{
        print("Oh no its \(person) again")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

func square(numbers: Int...){ // variadic function
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1,2,3,4,5)

enum PasswordError: Error{
    case obvious
}
func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

do{
    try checkPassword("password")
    print("That password is good")
}catch{
    print("you cannot use this password")
}

func doubleInPlace(number: inout Int){
    number*=2
}
var myNum = 10
doubleInPlace(number: &myNum)


