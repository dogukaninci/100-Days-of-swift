import UIKit

var name = "Tim McGraw"
name = "Romeo"

var name2: String //Don't put a space before the colon
name2 = "Dodo"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667
latitude = 123456789.123456789

var longitude: Float
longitude = -86.783333
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

var name3: String = "Tim McGraw"

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var aDouble = 1.1
var bDouble = 2.2
var cDouble = a + b

var name4 = "Tim McGraw"
var name5 = "Romeo"
var both = name4 + " and " + name5

var c = a + b
c > 3
c >= 3
c > 4
c < 4

name == "Tim McGraw"
name != "Tim McGraw"
"Your name is \(name)"
"Your name is " + name
"Your name is \(name), your age is \(age), and your latitude is \(latitude)"
"You are \(age) years old. In another \(age) years you will be \(age * 2)."

var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]
type(of: songs)
var songs2: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 2]
type(of: songs2)

var songs3: [String] = []
var songs4 = [String]()

var songs5 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs + songs5
both2 += ["Everything has Changed"]

var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]
var person2 = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person2["middle"]
person2["month"]

var personWhitespaces = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

personWhitespaces["middle"]
personWhitespaces["month"]

var action: String
var personConditions = "hater"

if personConditions == "hater" {
    action = "hate"
} else if personConditions == "player" {
    action = "play"
} else {
    action = "cruise"
}


if stayOutTooLate && nothingInBrain {
    action = "cruise"
}
if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]
for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 10 {
        break
    }
}

var songs6 = ["Shake it Off", "You Belong with Me", "Back to December"]
for song in songs6 {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")
    fallthrough;

default:
    print("Have you done something new?")
}
