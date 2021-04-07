//
//  main.swift
//  SwiftCalculator
//
//  Created by William Hahn on 4/7/21.
//

import Foundation

func gatherData() -> (Float, Float, String) {
    var num1: Float
    var num2: Float
    var oper: String
    
    print("First number?")
    num1 = Float(readLine()!)!
    
    print("Second number?")
    num2 = Float(readLine()!)!
    
    print("Operator?")
    oper = String(readLine()!)
    
    return (num1, num2, oper)
}

func add(num1: Float, num2: Float) -> Float {
    var result: Float
    result = num1 + num2
    return result
}

func subtract(num1: Float, num2: Float) -> Float {
    var result: Float
    result = num1 - num2
    return result
}

func multiply(num1: Float, num2: Float) -> Float {
    var result: Float
    result = num1 * num2
    return result
}

func divide(num1: Float, num2: Float) -> Float {
    var result: Float
    result = num1 / num2
    return result
}

let userData = gatherData()
let num1 = userData.0
let num2 = userData.1
let oper = userData.2

func doMath(num1: Float, num2: Float, oper: String) {
    var result: Float = 0
    
    switch oper {
    case "+":
        result = add(num1: num1, num2: num2)
    case "-":
        result = subtract(num1: num1, num2: num2)
    case "*":
        result = multiply(num1: num1, num2: num2)
    case "/":
        result = divide(num1: num1, num2: num2)
    default:
        print("Error calculating answer")
    }
    
    print("\(num1) \(oper) \(num2) = \(result)")
}

doMath(num1: num1, num2: num2, oper: oper)
