import UIKit

// for loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// if you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:

print("Players gonna ")

for _ in 1...5 {
    print("play")
}



// while loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not here I come!")



// repeat loops

// because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")



// exiting loops

// you can exit a loop at any time using the break keyword

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

print("Blast off!")



// exiting multiple loops

// If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.

// As an example, we could write some code to calculate the times tables from 1 through 10 like this:

//for i in 1...10 {
//    for j in 1...10 {
//        let product = i * j
//        print ("\(i) * \(j) is \(product)")
//    }
//}

// If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:

//outerLoop: for i in 1...10 {
//    for j in 1...10 {
//        let product = i * j
//        print ("\(i) * \(j) is \(product)")
//    }
//}

// Second, add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// With a regular break, only the inner loop would be exited – the outer loop would continue where it left off.
