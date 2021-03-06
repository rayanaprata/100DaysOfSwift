import UIKit

// day 8 structs part one

// create your own structs

enum Color {
    case white
    case black
    case brown
    case orange
}

struct Cat {
    var name: String
    let dayOfBirth: Int
    let color: Color
}

var firstCat = Cat(name: "Missi", dayOfBirth: 3, color: .black)

firstCat.name = "Kitty"



// computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic Sport"
        } else {
            return "\(name) is not an Olympic Sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)



// property observers

// let you run code before or after any property changes

struct Progress {
    var task: String
    var amount: Int {
        
        // action before change
        willSet {
            print("Will be change")
        }
        
        // action after change
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 20
progress.amount = 80
progress.amount = 100



// methods -> functions inside structs

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()



// mutating methods

// When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()



// properties and methods of strings

let testString = "Do or do not, there is no try."

// read the number of characters in a string
print(testString.count) //30

// they have a hasPrefix() method that returns true if the string starts with specific letters:
print(testString.hasPrefix("Do")) //true

// you can uppercase a string by calling its uppercased() method
print(testString.uppercased())

// and you can even have swift sort the letters of the string into an array
print(testString.sorted())



// properties and mathods of array

var toys = ["Woody"]
var testNumbersArray = [4, 6, 1, 9, 10, 3, 20, 7, 50, 8, 70, 5, 48, 2, 3]

// you can read the number of items in an array using its count property
print(toys.count)

// if you wanted add a new item, use the apped() method
toys.append("Buzz")

// you can locate any item inside an array using its firstIndex() method
toys.firstIndex(of: "Buzz") // that will return 1, because arrays count from 0

// you can have swift sort the items of the array alphabetically
print(toys.sorted())
print(testNumbersArray.sorted())

// if you want to remove an item, use the remove() method
toys.remove(at: 0)


