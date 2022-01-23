import UIKit

let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore
 
let meaningOfLife = 42
let doubleMeaningOfLife = 42 + 42
let fakers = "fakers gonna"
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniarts"

let thirdcore = 6
let fourthScore = 4

thirdcore == fourthScore
thirdcore != fourthScore
thirdcore < fourthScore
thirdcore >= fourthScore
"Taylor" <= "Swift"

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

let thirdCard = 11
let fourthCard = 10

print(thirdCard == fourthCard ? "Same" : "Different") //The ternary operator

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough //Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword
default:
    print("Enjoy your day!")
}

let scored = 85

switch scored{ // the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
case 0..<50:
    print("you failed badly")
case 50..<85:
    print("you did OK.")
default:
    print("you did great")
}
