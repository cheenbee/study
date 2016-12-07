//
//  ControlFlow.swift
//  SwiftLearning
//
//  Created by chen on 16/12/6.
//  Copyright © 2016年 none. All rights reserved.
//

import Cocoa

class ControlFlow: NSObject {
    override init () {
        super.init()
        self.controlFlow()
    }
    
    func controlFlow() -> Void {
        self.forFlow()
    }
    
    func forFlow() -> Void {
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            answer *= base
        }
        print("\(base) to the power of \(power) is \(answer)")
        
        let names = ["Anna", "Alex", "Brain", "Jack"]
        for name in names {
            print("Hello, \(name)")
        }
        
        let numberOflegs = ["Spider": 8, "Cat": 4]
        for (animalName, legCount) in numberOflegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        /**
        let http200Status = (200, "OK")
        for item in http200Status {
            print("\(item)")
        }*/
    }
    
    
}
