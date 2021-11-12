import UIKit

// protocols and extensions

// protocols

// Protocols are a way of describing what properties and methods something must have.

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}



// protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }



// extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 5
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

number.isEven



// protocol extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()



// protocol-oriented programming

protocol Identif {
    var id: String { get set }
    func identify()
}

extension Identif {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Userr: Identif {
    var id: String
}

let twostraws = Userr(id: "twostraws")
twostraws.identify()
