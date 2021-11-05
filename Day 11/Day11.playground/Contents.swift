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
