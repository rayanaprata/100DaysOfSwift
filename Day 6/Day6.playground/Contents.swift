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


