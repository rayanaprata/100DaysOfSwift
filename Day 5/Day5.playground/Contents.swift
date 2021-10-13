import UIKit

// functions, parameters and erros



// writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()



// accepting parameters

func squareInt(number: Int) {
    print(number * number)
}

squareInt(number: 2)



// returning values

func squareDouble(number: Double) -> Double {
    return number * number
}

let result = squareDouble(number: 2.5)
print(result)



// parameter labels

// Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function.

func sayhello(to name: String) {
    print("Hello, \(name)!")
}

// The parameter is called to name, which means externally it’s called to, but internally it’s called name
sayhello(to: "Taylor")



// omitting parameter labels

// you can use an underscore, _, for your external parameter name

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Ray")



// default parameters

//You can give your own parameters a default value just by writing an = after its type followed by the default you want to give it

func newGreet(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

newGreet("Rayana")
newGreet("Rayana", nicely: false)



// variadic functions

print("Haters", "gonna", "hate")

// You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.

func squareManyNumbers(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareManyNumbers(numbers: 1, 2, 3, 4)



// writing throwing functions

// Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

// First we need to define an enum that describes the errors we can throw. These must always be based on Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll throw an error if the user tries an obvious password:

enum PasswordError: Error {
    case obvious
}

// Now we’ll write a checkPassword() function that will throw that error if something goes wrong. This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.

// Here’s that in Swift:
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}



// running throwing functions

//Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an error-throwing function by accident.

//Instead, you need to call these functions using three new keywords: do starts a section of code that might cause problems, try is used before every function that might throw an error, and catch lets you handle errors gracefully.

//If any errors are thrown inside the do block, execution immediately jumps to the catch block. Let’s try calling checkPassword() with a parameter that throws an error:

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//When that code runs, “You can’t use that password” is printed, but “That password is good” won’t be – that code will never be reached, because the error is thrown.




// inout parameters

// All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.

// For example, if you want to double a number in place – i.e., change the value directly rather than returning a new one – you might write a function like this:

func doubleInPlace(number: inout Int) {
    number *= 2
}

// To use that, you first need to make a variable integer – you can’t use constant integers with inout, because they might be changed. You also need to pass the parameter to doubleInPlace using an ampersand, &, before its name, which is an explicit recognition that you’re aware it is being used as inout.

// In code, you’d write this:

var myNum = 10
doubleInPlace(number: &myNum)



// functions summary

//Functions let us re-use code without repeating ourselves.

//Functions can accept parameters – just tell Swift the type of each parameter.

//Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.

//You can use different names for parameters externally and internally, or omit the external name entirely.

//Parameters can have default values, which helps you write less code when specific values are common.

//Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.

//Functions can throw errors, but you must call them using try and handle errors using catch.

//You can use inout to change variables inside a function, but it’s usually better to return a new value.
