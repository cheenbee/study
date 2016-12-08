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
        self.whileFlow()
        self.switchFlow()
    }
    
    func forFlow() -> Void {
        for index in 1..<6 {
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
    
    func whileFlow() -> Void {
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            diceRoll += 1
            if diceRoll == 7 {
                diceRoll = 1
            }
            square += diceRoll
            if square < board.count {
                square += board[square]
            }
        }
        
        print("Game Over! square is \(square)")
        
        let finalStep = 100
        var i = 1;
        var totalCount = 0
        repeat {
            totalCount = i * (i + 1)
            i += 1
        } while i <= finalStep
        print("100! = \(totalCount)")
        
    }
    
    func switchFlow() -> Void {
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a", "B":
//            break
            print("The letter a")
        case "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings)")
        
        let somepoint = (1, 1)
        switch somepoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(0, \(somepoint.1)) is on the x-axis")
        case (0, _):
            print("(\(somepoint.0), 0) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somepoint.0), \(somepoint.1)) is in of the box")
        default:
            print("(\(somepoint.0), \(somepoint.1)) is outside of the box")
        }
    }
    
    
}
