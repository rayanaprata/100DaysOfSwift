import UIKit

// arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore



// operator overloading

// Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with.

// sums numbers
let meaningOfLife = 42
let doubleMeaning = 42 + 42

// joins strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

// join arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Remember, Swift is a type-safe language, which means it won’t let you mix types. For example, you can’t add an integer to a string because it doesn’t make any sense.



// compound assignment opertors

// shorthand operators, thath combine one operator with an assignment

// if someone scored 95 in an exam but needs to be penalized 5 points, you could write this:
var score = 95
score -= 5

// similarly, you can add one string to another using +=:
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
