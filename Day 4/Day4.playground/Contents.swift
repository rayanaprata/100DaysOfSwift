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



// skipping items

// if you just want to skip the current item and continue on to the next one, you should use continue instead

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}



// infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}



// looping summary

// 1. Loops let us repeat code until a condition is false.



// 2. The most common loop is for, which assigns each item inside the loop to a temporary constant.

//for number in count {
//    print("Number is \(number)")
//}



// 3. If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.

//for _ in count {
//    print("Number is \(number)")
//}



// 4. There are while loops, which you provide with an explicit condition to check.

//while number <= 20 {
//    print(number)
//    number += 1
//}



// 5. Although they are similar to while loops, repeat loops always run the body of their loop at least once.

//repeat {
//    print(number)
//    number += 1
//} while number <= 20

 

// 6. You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.

//if countDown == 4 {
//    print("I'm bored. Let's go now!")
//    break
//}



// 7. You can skip items in a loop using continue.

//for i in 1...10 {
//    if i % 2 == 1 {
//        continue
//    }
//
//    print(i)
//}



// 8. Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!

//while true {
//    print(" ")
//    counter += 1
//
//    if counter == 273 {
//        break
//    }
//}
