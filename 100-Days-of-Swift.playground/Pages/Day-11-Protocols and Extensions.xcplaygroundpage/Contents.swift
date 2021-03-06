import Foundation

protocol Identifiable{
    var id: String {get set}
    func identify()
}
struct User: Identifiable{
    var id: String
}
func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}

protocol Payable{
    func calculateWages() -> Int
}
protocol NeedsTraining{
    func study()
}
protocol HasVacation{
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }

extension Int{
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection{ // protocol extension
    func summarize(){
        print("There are \(count) of us")
        for name in self{
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

extension Identifiable{
    func identify(){
        print("My id is \(id).")
    }
}

let twostraws = User(id: "twostraws")
twostraws.identify()
