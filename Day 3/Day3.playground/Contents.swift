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



// comparison operators

let firstValue = 6
let secondValue = 4

// equality
firstValue == secondValue
firstValue != secondValue

// four operators for comparing whether one value is greater than, less than, or equal to another

firstValue < secondValue
firstValue >= secondValue

// each of these also work with strings, because strings have a natural alphabetical order:

"Taylor" <= "Swift"
"Ada" < "Ale"
"test" == "test"



// conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}



// combining conditions

let age1 = 12
let age2 = 21

// && -> and
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// || -> or
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}



// the ternary operator

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// we could write the same code using a regular condition:

//if firstCard == secondCard {
//    print("Cards are the same")
//} else {
//    print("Cards are different")
//}



// switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}



// range operators

// Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<, creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.

// For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.

// Ranges are helpful with switch blocks, because you can use them for each of your cases. For example, if someone sat an exam we could print different messages depending on their score:

let value = 84

switch value {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// As before, the default case must be there to ensure all possible values are covered.
