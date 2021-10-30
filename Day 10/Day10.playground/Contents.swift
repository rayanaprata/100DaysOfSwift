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
