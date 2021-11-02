import UIKit

// creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// creating instances of that class
let poppy = Dog(name: "Poppy", breed: "Poodle")



// class inheritance

//The second difference between classes and structs is that you can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.
//
//This is called class inheritance or subclassing, the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// For safety reasons, Swift always makes you call super.init() from child classes – just in case the parent class does some important work when it’s created.



// overriding methods

//Child classes can replace parent methods with their own implementations – a process known as overriding. Here’s a trivial Dog class with a makeNoise() method:

class DogOverriding {
    func makeNoise() {
        print("Woof!")
    }
}


//If we create a new Poodle class that inherits from Dog, it will inherit the makeNoise() method. So, this will print “Woof!”:

//class Poodle: Dog {
//}

//let pop = Poodle()
//pop.makeNoise()

//Method overriding allows us to change the implementation of makeNoise() for the Poodle class.

//Swift requires us to use override func rather than just func when overriding a method – it stops you from overriding a method by accident, and you’ll get an error if you try to override something that doesn’t exist on the parent class:

class PoodleOverriding: DogOverriding {
    override func makeNoise() {
        print("Yip!")
    }
}

let pop = PoodleOverriding()
pop.makeNoise()

//With that change, poppy.makeNoise() will print “Yip!” rather than “Woof!”.



// final classes

// Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

// To make a class final just put the final keyword before it, like this:

final class DogFinal {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}



// copying objects

// The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

// Because of the way classes work, both singer and singerCopy point to the same object in memory, so when we print the singer name again we’ll see “Justin Bieber”:

print(singer.name)
print(singerCopy.name)

struct SingerStruct {
    var name = "Taylor"
}

var singerStruct = SingerStruct()
print(singerStruct.name)

var singerStructCopy = singerStruct
singerStructCopy.name = "Justin"

print(singerStruct.name)
print(singerStructCopy.name)



// Deinitializers

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}



// mutability

// The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.

// However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

class SingerMutability {
    var name = "Taylor Swift"
}

let taylor = SingerMutability()
taylor.name = "Ed Sheeran"
print(taylor.name)

// If you want to stop that from happening you need to make the property constant:
//class SingerMutability {
//    let name = "Taylor Swift"
//}
