import UIKit

// structs part two

// initializers

// Initializers are special methods that provide different ways to create your struct. All structs come with one by default, called their memberwise initializer – this asks you to provide a value for each property when you create the struct.

struct UserWithoutInitializer {
    var username: String
}

var userWithoutInit = UserWithoutInitializer(username: "twostraws")
userWithoutInit.username

struct UserWithInitializer {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var userWithInit = UserWithInitializer()
userWithInit.username



// referring to the current instance

// Inside methods you get a special constant called self, which points to whatever instance of the struct is currently being used.

// This self value is particularly useful when you create >>> initializers that have the same parameter names <<< as your property.

// For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter.

//Here’s that in code:

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
    //  property  = parameter
        self.name = name
    }
}



// lazy properties

// As a performance optimization, Swift lets you create some properties only when they are needed. As an example, consider this FamilyTree struct – it doesn’t do much, but in theory creating a family tree for someone takes a long time:

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// We might use that FamilyTree struct as a property inside a Person struct, like this:

struct PersonWithLazyVar {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = PersonWithLazyVar(name: "Ed")

// But what if we didn’t always need the family tree for a particular person? If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed

// So, if you want to see the “Creating family tree!” message, you need to access the property at least once:

ed.familyTree
