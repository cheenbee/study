//
//  Functions.swift
//  SwiftLearning
//
//  Created by 艾呦呦 on 16/12/16.
//  Copyright © 2016年 none. All rights reserved.
//

import Cocoa

class Functions: NSObject {
    
    override init () {
        super.init()
        callingFunctions()
    }
    
    func callingFunctions() {
        print(greeting(personName: "Anna"))
        print(greet(person: "Anna", alreadyGreeted: true))
        printWithoutCounting(string: "Have a nice day !")
        
        let years = [2000, 2010, 2020, 2030]
        guard let bounds = minMax(array: years) else {
            return
        }
        print("min is \(bounds.min), max is \(bounds.max)")
        
        print(sayHello(person: "Bill", from: "Cupertino"))
        
        someFunction(1, secondParameter: 2)
        someMethod(parameterWithoutDefault: 1, parameterWithDefault: 3)
        
        // average
        print(arithmeticMean(1, 2, 3, 4, 5))
        
        var a = 3
        var b = 5
        print("Before Swap a is \(a) b is \(b)")
        swapTwoInts(&a, &b)
        print("After  Swap a is \(a) b is \(b)")
        
        printMathResult(addTwoInts, a, b)
    }
    
    func greeting(personName:String) -> String {
        let greeting = "Hello," + personName + "!"
        return greeting
    }
    
    func greetAgain(person:String) -> String {
        return "Hello Again," + "\(person)" + "!"
    }
    
    func greet(person: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return greetAgain(person: person)
        }
        
        return greeting(personName: person)
    }
    
    func printAndCount(string: String) -> Int {
        print(string)
        return string.characters.count
    }
    
    func printWithoutCounting(string: String) {
        let _ = printAndCount(string: string)
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
//        return (array.min(), array.max())
        if array.isEmpty {
            return nil
        }
        var currentMin = array[0]
        var currentmax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentmax {
                currentmax = value
            }
        }
        
        return (currentMin, currentmax)
    }
    
    // argument label
    func sayHello(person: String, from hometown: String) -> String {
        return "Hello \(person)! Glad you could visit from \(hometown)"
    }
    
    // omitting argument labels
    func someFunction(_ firstParameterName: Int, secondParameter: Int) {
        
    }
    
    // default parameter values
    func someMethod(parameterWithoutDefault: Int,
                    parameterWithDefault: Int = 2) {
        print("parameterWithDefault is \(parameterWithDefault)")
    }
    
    // variadic parameters
    func arithmeticMean(_ numbers: Double...) -> Double {
        var totoal: Double = 0
        for number in numbers {
            totoal += number
        }
        
        return totoal / Double(numbers.count)
    }
    
    // In-Out Parameters 形参默认是常量
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temp = a
        a = b
        b = temp
    }
    
    func addTwoInts(_ a: Int, _ b:Int) -> Int {
        return a + b
    }
    
    func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
        print("Result: \(mathFunction(a, b))")
    }
    
}