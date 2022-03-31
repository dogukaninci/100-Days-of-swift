//
//  ViewController.swift
//  hackerrank
//
//  Created by Doğukan Inci on 19.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        var h = 5
        var m = 0
        var result = ""
        var numberDictionary = [0: "o'clock", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six", 7: "seven", 8: "eight", 9: "nine", 10: "ten", 11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen", 15: "fifteen", 16: "sixteen", 17: "seventeen", 18: "eighteen", 19: "nineteen", 20: "twenty"]
        if m == 0 {
            result.append("\(numberDictionary[h]!) ")
            result.append(numberDictionary[0]!)
        }
        if m == 15 {
            result.append("quarter past ")
            result.append(numberDictionary[h]!)
        }
        if m == 30 {
            result.append("half past ")
            result.append(numberDictionary[h]!)
        }
        if m == 45 {
            result.append("quarter to ")
            result.append(numberDictionary[h + 1]!)
        }
        if m >= 1 && m <= 20 {
            result.append("\(numberDictionary[m]!) minutes past ")
            result.append(numberDictionary[h]!)
        }
        if m > 20 && m < 30 {
            result.append("\(numberDictionary[20]!) \(numberDictionary[m - 20]!) minutes past ")
            result.append(numberDictionary[h]!)
        }
        if m > 30 && m <= 40 {
            result.append("\(numberDictionary[20]!) \(numberDictionary[40 - m]!) minutes to ")
            result.append(numberDictionary[h + 1]!)
        }
        if m > 45 {
            result.append("\(numberDictionary[60 - m]!) minutes to ")
            result.append(numberDictionary[h + 1]!)
        }
        print(result)
    }


}

