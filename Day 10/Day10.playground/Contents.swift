import UIKit

// creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// creating instances of that class
let poppy = Dog(name: "Poppy", breed: "Poodle")
