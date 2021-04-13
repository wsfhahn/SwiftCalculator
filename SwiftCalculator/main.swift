//
//  main.swift
//  SwiftCalculator
//
//  Created by William Hahn on 4/7/21.
//

import Foundation

func gatherData() -> (Float, Float, String) {
    var num1: Float = 0
    var num2: Float = 0
    var oper: String
    
    print("Oper?")
    oper = String(readLine()!)
    
    switch oper {
    case "+":
        print("First Number?")
        num1 = Float(readLine()!)!
        
        print("Second Number?")
        num2 = Float(readLine()!)!
    }
    
    case "-":
        print("First Number?")
        num1 = Float(readLine()!)!
    
        print("Second Number?")
        num2 = Float(readLine()!)!
    
    case "*":
        print("First Number?")
        num1 = Float(readLine()!)!
    
        print("Second Number?")
        num2 = Float(readLine()!)!
    
    case "/":
        print("First Number?")
        num1 = Float(readLine()!)!
    
        print("Second Number?")
        num2 = Float(readLine()!)!
    
    case "**":
        print("Number?")
        num1 = Float(readLine()!)!
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

func sqr(num: Float) -> Float {
    var result: Float
    result = num * num
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
        print("\(num1) \(oper) \(num2) = \(result)")
    case "-":
        result = subtract(num1: num1, num2: num2)
        print("\(num1) \(oper) \(num2) = \(result)")
    case "*":
        result = multiply(num1: num1, num2: num2)
        print("\(num1) \(oper) \(num2) = \(result)")
    case "/":
        result = divide(num1: num1, num2: num2)
        print("\(num1) \(oper) \(num2) = \(result)")
    case "**":
        result = sqr(num: num1)
        print("\(num1)^2 = \(result)")
    default:
        print("Error calculating answer")
    }
}

doMath(num1: num1, num2: num2, oper: oper)
