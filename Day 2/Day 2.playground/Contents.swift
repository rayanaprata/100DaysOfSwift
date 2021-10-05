import UIKit

// arrays

// declaraçao
var fruits: [String] = []
let vegetables: [String] = []
var cars = ["Fusca", "Fiat 147", "Opala", "Corsa"]

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

for fruit in fruits {
    print(fruit)
}

