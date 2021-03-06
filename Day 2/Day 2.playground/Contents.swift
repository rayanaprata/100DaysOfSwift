import UIKit
import Foundation

// arrays

// declaraçao
var fruits: [String] = []
let vegetables: [String] = []                        // declaração de array explícita
var cars = ["Fusca", "Fiat 147", "Opala", "Corsa"]   // declaração de array implícita

// inserindo dados
fruits.append("apple")
fruits.append("banana")

fruits += ["orange"]
fruits = fruits + ["mango", "grape"]

// ["apple", "banana", "orange", "mango", "grape"]

// alterando o valor da segunda fruta, de banana para lemon
fruits[1] = "lemon"

// inserindo valores em um índice específico
fruits.insert("banana", at: 5)

// removendo valores de um índice específico
let itemRemovido = fruits.remove(at: 4) //esse método retorna o valor que foi removido!
"O item \(itemRemovido) foi removido do array \(fruits)"
// O item grape foi removido do array ["apple", "lemon", "orange", "mango", "banana"]

// a propriedade count retorna o tamanho do array
fruits.count //5

// método que verifica se o array está vazio
fruits.isEmpty //false
vegetables.isEmpty //true

var newFruits: [String] = []

for fruit in fruits {
    if fruit[fruit.startIndex] == "m" {
        "\(fruit) starts with letter m"
        // mango starts with letter m
    }
    if fruit.count > 5 {
        "The fruit \(fruit) have more than 5 caracteres"
        // The fruit orange have more than 5 caracteres
        // The fruit banana have more than 5 caracteres
    }
}

var frase = [String]()   // outra forma de declarar um array vazio!
frase.isEmpty  //true
frase = ["My", "mother", "was", "a", "tailor"]

/*
 for (index, value) in frase.enumerated() {
    print("Item \(index): \(value)")
}

Saída:
Item 1: My
Item 2: mother
Item 3: was
Item 4: a
Item 5: tailor */



// alguns exemplos utilizando arrays

var threeDoubles = Array(repeating: 0.0, count:3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

var shoppingList: [String] = ["Eggs", "Milk"]



//manipulando uma string

var welcome = "hello"

welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.remove(at:welcome.index(before: welcome.endIndex))
// welcome now equals "hello"



// sets

/* Sets are collections of values just like arrays, except they have two differences:

 1 Items aren’t stored in any order; they are stored in what is effectively a random order.
 2 No item can appear twice in a set; all items must be unique.
 */

let colors = Set(["red", "green", "blue"]) //its unordered




// tuples

// Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

// 1 You can’t add or remove items from a tuple; they are fixed in size.

// 2 You can’t change the type of items in a tuple; they always have the same types they were created with.

// 3 You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

//Tuples are created by placing multiple items into parentheses, like this:
var name = (first: "Taylor", last: "Swift")

// You then access items using numerical positions starting from 0:
name.0

// Or you can access items using their names:
name.first

name.first = "Zeca"
name.last = "Pagodinho"

// Remember, you can change the values inside a tuple after you create it, but not the types of values. So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.




// arrays vs sets vs tuples

// if you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:

let address = (street: "Maria Muller Gieseler", number: "111", city: "Blumenau")

// if you need a collection of values that must be unique or you need to be able to check wheter a specific items is in there extremely quickly, you should use a set:

let giftsIWant = Set(["Atomic Habits", "Clean Code"])

// if you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let drinks = ["Water", "Beer", "Coffee"]

// Arrays are by far the most common of the three types.




// dictionaries

// The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// you can use the key to read the value of the dictionary
heights["Taylor Swift"]

// Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].



// dictionary default values

// If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all.
// While this might be what you want, there’s an alternative: we can provide the dictionary with a default value to use if we request a missing key.

// To demonstrate this, let’s create a dictionary of favorite ice creams for two people:

let favoriteIceCream = [
    "Rayana": "Chocolate",
    "Jhonnatan": "Vanilla"
]

// we can read Rayana`s favorite ice cream like this:
favoriteIceCream["Rayana"]

// but if we tried reading the favorite ice cream for Charlotte, we’d get back nil, meaning that Swift doesn’t have a value for that key:
favoriteIceCream["Charlotte"]

// we can fix this by giving the dictionary a default value of “Unknown”, so that when no ice cream is found for Charlotte we get back “Unknown” rather than nil:

favoriteIceCream["Charlotte", default: "Unknown"]





// creating empty collections


// dictionary

// empty dictionary with strings for keys and values
var teams = [String: String]()

// we can then add entries later on, like this:
teams["Paul"] = "Team A"
teams["Rodrigo"] = "Team B"

//print(teams)  ->   ["Paul": "Team A", "Rodrigo": "Team B"]


// array
var results = [Int]()

results.append(5)

// print(results) ->  [5]


// set

// the exception is creating an empty set, which is done differently:
var words = Set<String>()
var numers = Set<Int>()

words.insert("test")
words.insert("new test")
// print(words)  ->  ["new test", "test"]




// If you wanted, you could create arrays and dictionaries with similar syntax:
var scores = Dictionary<String, Int>()
var arrayOfNumbers = Array<Int>()




// enumerations

// usually called just ENUMS are a way to defining groups of related values in a way that makes them easier to use

// if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as strings:

let result = "failure"

// But what happens if someone accidentally uses different naming?

let result2 = "failed"
let result3 = "fail"

// All those three are different strings, so they mean different things.

// With enums we can define a Result type that can be either success or failure, like this:

enum Result {
    case success
    case failure
}

// And now when we use it we must choose one of those two values:
let result4 = Result.failure // failure
let result5 = Result.success // success

//This stops you from accidentally using different strings each time.



// enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "footbal")



// enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

// swift will automatically assign each of those a number starting from 0

// you can use that number to create an instance of the appropriate enum case
let earth = Planet(rawValue: 2)


// if you want, you can assign one or more cases a specific value, and Swift will generate the rest

enum Colors: Int {
    case blue = 1
    case yellow    //2
    case red       //3
    case green     //4
}

// now swift will assign 1 to blue and count upwards from there, meaning that red is now the third color, not second





// summary

// 1 Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.


// 2 Arrays store items in the order you add them, and you access them using numerical positions.

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]


// 3 Sets store items without any order, so you can’t access them using numerical positions.

let setColors = Set(["red", "green", "blue"])


// 4 Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.

var tupleName = (first: "Josh", last: "Dun")


// 5 Dictionaries store items according to a key, and you can read items using those keys.

let dictHeights = [
    "Rayana": 1.70,
    "Jhonnatan": 1.75
]


// 6 Enums are a way of grouping related values so you can use them without spelling mistakes.

enum Turno: Int {
    case manha = 1
    case tarde
    case noite
}


// 7 You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.

let jose = Turno(rawValue: 3)
let singin = Activity.singing(volume: 10)
