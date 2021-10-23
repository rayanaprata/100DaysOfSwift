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


