import UIKit

// variables
var greeting = "Hello, playground"
greeting = "Goodbye"

// ===============================

// strings and integers
var drink = "beer"
var age = 38
var population = 8_000_000

// ===============================

// multi-line strings
var str = """
This goes
over multiple
lines
"""

//print(str)

// ===============================

// double and booleans
var pi = 3.141

var awesome = true
awesome = false

// ===============================

// string interpolation
var score = 85
var yourScore = "Your score was \(score)"
var results = "The test results are here: \(yourScore)"

// ===============================

// constants
let taylor = "swift"

// ===============================

// type annotations
let hello = "Hello World"

// that will make the hello a string, so you can't try to assign it an integer or a boolear later on

// this is called >>type interference<< Swift is able to infer the type of something based on how you created it

// if you want you can be explicit about the type of your data rather than relying on Swift’s type inference, like this:

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.8
let taylorRocks: Bool = true

// ===============================

// simple types: summary

// 1. You make variables using var and constants using let. It’s preferable to use constants as often as possible.

var canChange = "you can change the value of this var"
let cantChange = "you cant change the value of this let (constant)"

// 2. Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.

let multipleLines = """
multiple
lines :)
"""

// 3. Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.

let number = 5
let fractionalNumber = 2.5
let flag = false

// 4. String interpolation allows you to create strings from other variables and constants, placing their values inside your string.

let fruit = "banana"
let favoriteFruit = "My favorite fruit is \(fruit)"

// 5. Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.

let color: String = "black"
let quantity: Int = 3
let width: Double = 20.5
let itsHot: Bool = true
