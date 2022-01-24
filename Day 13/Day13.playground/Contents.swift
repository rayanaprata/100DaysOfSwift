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



// conditional statements
var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}



// loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)

//Looping over arrays
for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}

//Inner loops
for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

//While loops
var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}


// There is a counterpart to break called continue
for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}



// switch cases
let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")
case 1:
    print("You just released iTunes Live From SoHo")
case 2:
    print("You just released Speak Now World Tour")
default:
    print("Have you done something new?")
}

let studioAlbums = 8

switch studioAlbums {
case 0...3:
    print("You're just starting out")
case 4...7:
    print("You're a rising star")
case 8...11:
    print("You're world famous!")
default:
    print("Have you done something new?")
}


