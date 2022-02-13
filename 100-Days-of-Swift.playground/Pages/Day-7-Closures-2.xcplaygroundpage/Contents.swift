import Foundation

func travel(action: (String)-> Void){
    print("I am getting ready to go")
    action("London")
    print("I arrived!")
}
travel{ (place: String) in
    print("I am going to \(place) in my car")
}

func travel(action: (String) -> String){
    print("I am getting ready to go")
    let description = action("London")
    print(description)
    print("I arrived")
}
travel { (place: String) -> String in
    return "I am going to \(place) in my car"
}
travel{ place -> String in
    return "I'am going to \(place) in my car"
}
travel { place in
    return "I'am going to \(place) in my car"
}
travel { place in
     "I'am going to \(place) in my car"
}
travel {
    "I'm going to \($0) in my car"
}

func travel(action: (String,Int) -> String){
    print("I am getting ready to go")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}
func travel() ->(String)-> Void{
    return{
        print("I'am going to \($0)")
    }
}
let result = travel()
result("London")

let results = travels()
results("London")
func travels() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
results("London")
results("London")
results("London")
