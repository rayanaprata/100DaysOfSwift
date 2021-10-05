import UIKit

// arrays

// declaraçao
var fruits: [String] = []
let vegetables: [String] = []                        // declaração de array explícita
var cars = ["Fusca", "Fiat 147", "Opala", "Corsa"]   // declaração de array implícita

// inserindo dados
fruits.append("apple")
fruits.append("banana")

fruits += ["orange"]
fruits = fruits + ["mango", "grape"]

// ["apple", "banana", "orange", "mango", "grape"]

// alterando o valor da segunda fruta, de banana para lemon
fruits[1] = "lemon"

// inserindo valores em um índice específico
fruits.insert("banana", at: 5)

// removendo valores de um índice específico
let itemRemovido = fruits.remove(at: 4) //esse método retorna o valor que foi removido!
"O item \(itemRemovido) foi removido do array \(fruits)"
// O item grape foi removido do array ["apple", "lemon", "orange", "mango", "banana"]

// a propriedade count retorna o tamanho do array
fruits.count //5

// método que verifica se o array está vazio
fruits.isEmpty //false
vegetables.isEmpty //true

var newFruits: [String] = []

for fruit in fruits {
    if fruit[fruit.startIndex] == "m" {
        "\(fruit) starts with letter m"
        // mango starts with letter m
    }
    if fruit.count > 5 {
        "The fruit \(fruit) have more than 5 caracteres"
        // The fruit orange have more than 5 caracteres
        // The fruit banana have more than 5 caracteres
    }
}

var frase = [String]()   // outra forma de declarar um array vazio!
frase.isEmpty  //true
frase = ["My", "mother", "was", "a", "tailor"]

/*
 for (index, value) in frase.enumerated() {
    print("Item \(index): \(value)")
}

Saída:
Item 1: My
Item 2: mother
Item 3: was
Item 4: a
Item 5: tailor */



// alguns exemplos utilizando arrays

var threeDoubles = Array(repeating: 0.0, count:3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
// anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

var shoppingList: [String] = ["Eggs", "Milk"]



//manipulando uma string

var welcome = "hello"

welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.remove(at:welcome.index(before: welcome.endIndex))
// welcome now equals "hello"



// sets

/* Sets are collections of values just like arrays, except they have two differences:

 1 Items aren’t stored in any order; they are stored in what is effectively a random order.
 2 No item can appear twice in a set; all items must be unique.
 */

let colors = Set(["red", "green", "blue"]) //its unordered
