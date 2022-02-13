import Foundation

let driving = {
    print("I am driving at my car")
}
driving()

let drivingWithParam = { (place: String) in
    print("I am going to \(place) in my car")
}
drivingWithParam("London")

let drivingWithReturn = { (place : String) -> String in
    return "I am going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

func travel(action: () -> Void){
    print("I am getting ready to go")
    action()
    print("I am arrived")
}

travel(action: driving)


