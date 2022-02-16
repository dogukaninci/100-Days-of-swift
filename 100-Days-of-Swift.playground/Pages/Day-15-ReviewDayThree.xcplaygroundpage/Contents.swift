import UIKit
// Property observers
struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"

//Computed properties
struct Person2 {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person2(age: 25)
print(fan.ageInDogYears)

// Static properties and methods

class Animal {
    static var nums = 0

    init() {
        Animal.nums += 1
    }
}

let dog = Animal()
Animal.nums // 1
let cat = Animal()
Animal.nums // 2

class TaylorFan2 {
    private var name: String? // access control
}

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
    func getPerformance() -> String {
            return "The album \(name) sold lots"
        }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String { //Polymorphism
            return "The studio album \(name) sold lots"
        }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
            return "The live album \(name) sold lots"
        }
}
var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}
for album in allAlbums {
    let studioAlbum = album as? StudioAlbum
}

for album in allAlbums {
    print(album.getPerformance())

    if let studioAlbum = album as? StudioAlbum { // Type casting
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}
var taylorSwift3 = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless3 = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums3: [Album] = [taylorSwift3, fearless3]

for album in allAlbums3 {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}
for album in allAlbums3 as! [StudioAlbum] {
    print(album.studio)
}
for album in allAlbums3 as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

//let number = 5
//let text = number as! String : ERROR

let number = 5
let text = String(number)
print(text)

let vw = UIView()
UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

