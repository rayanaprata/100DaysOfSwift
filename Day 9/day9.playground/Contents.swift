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


