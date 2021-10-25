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
