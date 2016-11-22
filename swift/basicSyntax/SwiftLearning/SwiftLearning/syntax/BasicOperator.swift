//
//  BasicOperator.swift
//  SwiftLearning
//
//  Created by 艾呦呦 on 16/11/22.
//  Copyright © 2016年 none. All rights reserved.
//

import Cocoa

class BasicOperator: NSObject {
    override init() {
        super.init()
        self.bassicOperator()
        self.tupleTest()
    }
    
    func bassicOperator() -> Void {
        let b = 10
        var a = 5
        a = b
        print(a)
        
        let (x, y) = (1, 2)
        print("x: \(x)  y: \(y)")
        
        /*
        if x = y {
            print("x: \(x)  y: \(y)")
        } */
        
        let helloString = "hello" + "world"
        print("\(helloString) \(x)")
        
        let three = 3
        let minusThree = -three
        print(minusThree)
        let plusThree = -minusThree
        print(plusThree)
        
        let defaultColorName = "red"
        var userDefinedColorName: String?
        var colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        userDefinedColorName = "green"
        colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        for index in 1...5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        for index in 6..<10 {
            print("\(index) * 2 = \(index * 2)")
        }
        
        let names = ["Anna", "Allen", "Alex", "Brain", "Jack", "Walker"]
        for i in 0..<names.count {
            print("第\(i + 1)个人的名字是: \(names[i])")
        }
        
        let allowEntry = false
        if !allowEntry {
            print("ACCESS DENIED")
        }
        
        let enterDoorCode = true
        let passedRetinaScan = false
        if enterDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        let knowsOverridePassword = true
        let hasDoorKey = true
        if (enterDoorCode && passedRetinaScan) || knowsOverridePassword || hasDoorKey {
            print("Welcome!")
        } else {
            print("ACCeSS DENIED")
        }
        
    }
    
    func tupleTest() -> Void {
        //元组即 一组有序的元素集合 元素类型不限
        let tuple = (2, "winder", 3.0, basicOperatorInstance: self)
        print(tuple)
        print("tuple[0]: \(tuple.0), tuple[3]: \(tuple.basicOperatorInstance)")
    }
    
    
    
}
