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



// using closures as parameters when they return values

// We’ve been using () -> Void to mean “accepts no parameters and returns nothing”

// To demonstrate this, we can write a travel() function that accepts a closure as its only parameter, and that closure in turn accepts a string and returns a string:

func eat(food: (String) -> String) {
    print("I'm getting ready to eat.")
    let description = food("Bread")
    print(description)
    print("I ate!")
}

// we call travel() using trailing closure syntax, our closure code is required to accept a string and return a string:

eat { (kindOfFood: String) -> String in
    return "I'm eating \(kindOfFood) in my house"
}
