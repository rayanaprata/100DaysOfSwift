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



// returning closures from functions

// The syntax for this is a bit confusing a first, because it uses -> twice: once to specify your function’s return value, and a second time to specify your closure’s return value.

// To try this out, we’re going to write a travel() function that accepts no parameters, but returns a closure. The closure that gets returned must be called with a string, and will return nothing.

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

// We can now call travel() to get back that closure, then call it as a function:
let result = travel()
result("London")

// It’s technically allowable – although really not recommended! – to call the return value from travel() directly:
// let result2 = travel()("London")



// capturing values

// If you use any external values inside your closure, Swift captures them – stores them alongside the closure, so they can be modified even if they don’t exist any more.

// Right now we have a travel() function that returns a closure, and the returned closure accepts a string as its only parameter and returns nothing:
//func travelCapturingValues() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}

// We can call travel() to get back the closure, then call that closure freely:
//let result = travelCapturingValues()
//result("London")

// Closure capturing happens if we create values in travel() that get used inside the closure. For example, we might want to track how often the returned closure is called:

func travelCapturingValues() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

//Even though that counter variable was created inside travel(), it gets captured by the closure so it will still remain alive for that closure.

//So, if we call result("London") multiple times, the counter will go up and up:

let res = travelCapturingValues()

res("London")
res("London")
res("London")
