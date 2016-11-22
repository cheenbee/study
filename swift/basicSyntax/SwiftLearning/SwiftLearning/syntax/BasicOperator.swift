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
    }
    
    func tupleTest() -> Void {
        //元组即 一组有序的元素集合 元素类型不限
        let tuple = (2, "winder", 3.0, basicOperatorInstance: self)
        print(tuple)
        print("tuple[0]: \(tuple.0), tuple[3]: \(tuple.basicOperatorInstance)")
    }
    
    
    
}
