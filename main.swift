//
//  main.swift
//  Algoritimo de Djkistra
//
//  Created by Gustavo Batista on 24/03/23.
//

import Foundation


let expression = "(1 + (( 2 + 3 ) * (4 * 5)))"

var result = 0

var valores: [Int] = []
var operadores: [Character] = []

for char in expression {
    switch char {
    case "(":
        // não faz nada
        break
    case "+", "-", "*", "/":
        operadores.append(char)
    case "0"..."9":
        if let num = Int(String(char)) {
            valores.append(num)
        }
    case ")":
        if let value2 = valores.popLast(),
           let value1 = valores.popLast(),
           let op = operadores.popLast() {
            let result: Int
            switch op {
            case "+":
                result = value1 + value2
            case "-":
                result = value1 - value2
            case "*":
                result = value1 * value2
            case "/":
                result = value1 / value2
            default:
                result = 0
            }
            valores.append(result)
        }
    default:
        break
    }
}

result = valores.last ?? 0

if (result == 101) {
    print("Exercício correto!")
} else {
    print("Expressão gerou resultado errado: \(result)")
}
