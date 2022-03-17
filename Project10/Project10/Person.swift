//
//  Person.swift
//  Project10
//
//  Created by Doğukan Inci on 3.03.2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
