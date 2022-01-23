import UIKit

let count = 1...10

for number in count{
    print("Number is:  \(number)")
}

let albums = ["red","1989","reputation"]

for album in albums{
    print("\(album) is on Apple Music")
}

print("player gonna")

for _ in 1...5{ // If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values
    print("play")
}
var number = 1
while number <= 20{
    print(number)
    number += 1
}

number = 1

repeat{
    print(number)
    number += 1
}while number <= 20
        
while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

for i in 1...10 { // nested loop
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop // break outer loop too not only inner loop
        }
    }
}
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

var counter = 0

while true {
    print(counter)
    counter += 1

    if counter == 273 {
        break
    }
}
