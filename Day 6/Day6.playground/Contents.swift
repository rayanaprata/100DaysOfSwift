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
