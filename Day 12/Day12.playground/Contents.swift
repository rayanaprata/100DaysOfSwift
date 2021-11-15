import UIKit



// handling missing data
var age: Int? = nil



// unwrapping optionals
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}



// unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}



// force unwrapping
let str = "5"
let num = Int(str)!



// implicitly unwrapped optionals
let agee: Int! = nil

// Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.



// nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"



// optional chaining
let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()



// optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// which you can use when you know for sure that the function will not fai
try! checkPassword("sekrit")
print("OK!")


// failable initializers
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
            print("deu bom")
        } else {
            print("nao deu bom")
            return nil
        }
    }
}

var person = Person(id: "09875432")



// typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    
//    If we want to loop over the pets array and ask all the dogs to bark, we need to perform a typecast: Swift will check to see whether each pet is a Dog object, and if it is we can then call makeNoise().

//    This uses a new keyword called as?, which returns an optional: it will be nil if the typecast failed, or a converted type otherwise.
    
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

