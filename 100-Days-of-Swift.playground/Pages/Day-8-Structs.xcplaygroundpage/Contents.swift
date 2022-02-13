import Foundation

struct Sport{
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn Tennis"

struct Sports{
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String{
        if isOlympicSport {
            return "\(name) is an Olympic Sport"
        }
        else{
            return "\(name) is not an Olympic Sport"
        }
    }
}
let chessBoxing = Sports(name: "ChessBoxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 70
progress.amount = 100

struct ProgressWhenSet{
    var task: String
    var amount: Int{
        didSet{                        // This will run some code every time amount changes
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progressWhenSet = ProgressWhenSet(task: "Loading data", amount: 0)
progressWhenSet.amount = 30
progressWhenSet.amount = 70
progressWhenSet.amount = 100
//We can also use willSet to take action before a property changes, but that is rarely used.

struct City{
    var population: Int
    func collectTaxes() -> Int{
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()

struct Person{
    var name: String
    mutating func makeAnonymous(){ //When you want to change a property inside a method, you need to mark it using the mutating keyword
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

let string = "Do or do not, there is no try"
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

struct User{
    var username: String
}
var user = User(username: "twostraws")
