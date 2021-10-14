import UIKit

// closures part two

// using closures as parameters when they accept parameters

// a function that accepts a closure as its only parameter, and that closure in turn accepts a string:
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// call travel() using trailing closure syntax, our closure code ir required to accept a string:
travel { (place: String) in
    print("I'm going to \(place) in my car.")
}
