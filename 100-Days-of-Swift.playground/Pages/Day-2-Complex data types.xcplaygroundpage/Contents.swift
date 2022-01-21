import UIKit
import Darwin

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo] // array
beatles[1]
var cities: [String] = ["London", "Paris", "New York"]

let color = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "green"])

var name = (first: "Taylor", second: "Swift") // Tuple: Fixed size, can't change the type of items
name.0
name.first

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville") // Tuple: specific, fixed collection
let set = Set(["aardvark", "astronaut", "azelea"]) // Set:that must be unique or you need to be able to check whether a specific item is in there extremely quickly
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Teryy"] // array: values that can contain duplicates, or the order of your items matters

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeren": 1.73
] // Dictionary: rather than storing things with an integer position you can access them using anything you want
heights["Taylor Swift"]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophia": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Sophia", default: "Unknown"] // dictionary default value if no match is found

var teams = [String : String]()
teams["Pauls"] = "Red"
var results = [Int]()
var words = Set<String>() //This is because Swift has special syntax only for dictionaries and arrays; other types...
var numbers = Set<Int>()  //...must use angle bracket syntax like sets.
var scores = Dictionary<String, Int>()
var result = Array<Int>()

let result2 = "failure"
let result3 = "failed"
let result4 = "fail"

enum result5 {
    case success
    case failure
}
let result6 = result5.failure
enum Activity{
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football") // Enum associated values

enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3) // Enum raw values






