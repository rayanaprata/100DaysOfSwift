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

// To demonstrate this, we can write a eat() function that accepts a closure as its only parameter, and that closure in turn accepts a string and returns a string:
func eat(food: (String) -> String) {
    print("I'm getting ready to eat.")
    let description = food("Bread")
    print(description)
    print("I ate!")
}

// we call eat() using trailing closure syntax, our closure code is required to accept a string and return a string:
eat { (food: String) -> String in
    return "I'm eating \(food) in my house"
}



// shorthand parameter names

// Normaly we call eat() using something like this:
eat { (food: String) -> String in
    return "I'm eating \(food) in my house"
}

// However, Swift knows the parameter to that closure must be a string, so we can remove it:
eat { food -> String in   // remove parameter type
    return "I'm eating \(food) in my house"
}

// It also knows the closure must return a string, so we can remove that:
eat { food in   // remove return type
    return "I'm eating \(food) in my house"
}

// As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too:
eat { food in
    "I'm eating \(food) in my house"   // remove return keyword
}

// Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
eat { // remove parameter
    "I'm eating \($0) in my house"   // replace parameter with $0
}



// closure with multiple parameters

// Just to make sure everything is clear, we’re going to write another closure example using two parameters.

// This time our travel() function will require a closure that specifies where someone is traveling to, and the speed they are going. This means we need to use (String, Int) -> String for the parameter’s type:


func travel(action: (String, Int) -> String) {
    print("=================")
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

// We’re going to call that using a trailing closure and shorthand closure parameter names. Because this accepts two parameters, we’ll be getting both $0 and $1:

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// Some people prefer not to use shorthand parameter names like $0 because it can be confusing, and that’s OK – do whatever works best for you.
