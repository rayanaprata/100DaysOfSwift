import UIKit

// closures, part one

// creating basic closures

// swift lets us use functions just like any other type such as strings and integers
// you can create a function and assign it to a variable, call that function using that variable, and even pass that functions into other functions as parameters

// functions used in this way are called closures, and although they work like functions they are writtem a little differently

let driving = {
    print("I'm driving in my car")
}

// that effectively creates a function without a name, and assigns that function to driving. you can now call driving() as if it were a regular function
driving()



// accepting parameters in a closure

// when you create closures, they don't have a name or space to write any parameters that doesn’t mean they can’t accept parameters, just that they do so in a different way: they are listed inside the open braces

// to make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting

let drivingWithParameters = { (place: String) in
    print("I'm going to \(place) in my car")
}

// One of the differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this
drivingWithParameters("London")



// returning values from a closure

// closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the in keyword

// we want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("United State")
print(message)



// closures as parameters

// because closures can be used like string and integers, you can pass them into functions

// If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.

// So, we can write a travel() function that accepts different kinds of traveling actions, and prints a message before and after:

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)
