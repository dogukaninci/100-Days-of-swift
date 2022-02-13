import Foundation
import Darwin

struct User{
    var username: String
    init(){
        username = "Anonymous"
        print("Creating a new user")
    }
}
var user = User()
user.username = "twostraws"

struct Person{
    var name: String
    init(name:String){
        print("\(name) was born")
        self.name = name
    }
}
var user2 = Person(name: "Hamdi")

struct FamilyTree{
    init(){
        print("Creating family tree!")
    }
}
struct PersonLazy{
    var name: String
    lazy var familyTree = FamilyTree() //If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed:
    init(name:String){
        self.name = name
    }
}
var ed = PersonLazy(name: "ed")
ed.familyTree

struct Student {
    var name: String
    init(name: String){
        self.name = name
    }
}
let edd = Student(name: "Edd")
let taylor = Student(name: "Taylor")

struct StudentStatic{
    static var classSize = 0
    var name: String
    init(name: String){
        self.name = name
        StudentStatic.classSize += 1 //The classSize property belongs to the struct itself rather than instances of the struct
    }
}
print(StudentStatic.classSize)

struct PersonAccess{
    private var id: String
    init(id:String){
        self.id = id
    }
    func identify() -> String{
        return "My social security number is \(id)"
    }
}
let eds = PersonAccess(id: "12345")
print(eds.identify())
