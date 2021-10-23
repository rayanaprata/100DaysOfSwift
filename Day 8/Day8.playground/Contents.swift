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
