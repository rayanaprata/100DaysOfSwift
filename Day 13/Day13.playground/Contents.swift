import UIKit


// swift review, day one

// variables and constants
var nameVar = "Rayana Prata"
nameVar = "Taylor Swift"

let birthdayDate = "03/08/2000"



// types of data

// string
var name: String
name = "Tim McGraw"

// int
var age: Int
age = 25

// double
var latitude: Double
latitude = 36.166667

// float
var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

// boolean
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false


// type annotations wisely
var ageWisely = 25
var longitudeWisely = -86.783333
var nothingInBrainWisely = true



// operators

// basics
// + to add, - to subtract, * to multiply, / to divide, = to assign value
var a: Double = 10
var b: Double = 10

a = a + 1
a = a - 1
a = a * a

b += 10
b -= 10

a = 1.1
b = 2.2
var c = a + b

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

// comparsion operators
// greater than (>), greater than or equal (>=), and less than (<)
c > 3
c >= 3
c > 4
c < 4

// check equality
var nameCheck = "Tim McGraw"
nameCheck == "Tim McGraw"

// not operator
stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

// you can also use ! with = to make != or "not equal". For example:
var checkName = "Tim McGraw"
checkName == "Tim McGraw"
checkName != "Tim McGraw"



// string interpolation
var nameInterpolation = "Tim McGraw"
"Your name is \(nameInterpolation)"

var interpolationName = "Tim McGraw"
"Your name is " + interpolationName

var nameInt = "Tim McGraw"
var ageInt = 25
var latitudeInt = 36.166667

"Your name is \(nameInt), your age is \(ageInt), and your latitude is \(latitudeInt)"



// arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

var songs1 = ["Shake it Off", "You Belong with Me", "Back to December"]
songs1[0]
songs1[1]
songs1[2]

var songs2 = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs2)

// this isn't possible:

//var songs3 = ["Shake it Off", "You Belong with Me", "Back to December", 3]
//type(of: songs3)

// var songs4: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

var songs5: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

// creating arrays
var songs6: [String]
// this isn't possible, because 'songs6' passed by reference before being initialized
//songs6[0] = "Shake it Off"

var songs7: [String] = []

var songs8 = [String]()

// array operations
var songs9 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs10 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs9 + songs10

both2 += ["Everything has Changed"]



// dictionaries
var personDictionary = ["first": "Taylor",
                        "middle": "Alison",
                        "last": "Swift",
                        "month": "December",
                        "website": "taylorswift.com"
]

personDictionary["middle"]
personDictionary["month"]


